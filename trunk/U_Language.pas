unit U_Language;

interface

uses
  SysUtils,
  lib1,
  QGraphics,
  QDialogs,
  QForms;

type  sectionentry  = String;
type  T_LngIDStr    = String;

  procedure Set_Language     ( Lng_ID : T_LngIDStr );

  function GetTxt ( FormID    : WORD;
                    ResIndex  : Word;                   // Formular Text holen
                    DefStr    : STRING ) : STRING;
const
  C_Language        = -1;
  C_MsgTxt          = -2;
  C_TabTxt          = -3;

  {Alle Formular IDs fortlaufend numerieren}
  Main              = 1;
  Setup             = 2;

  {Maximum amount of forms}
  FormularIDsMax    = 2;

var
	Lng_CharSet   : TFontCharset;

  {Fill array with the names of the sections}
  {Use the same sequence as above           }
  SectionArray  : Array [1..FormularIDsMax] of sectionentry = (
  'Main',
  'Setup'
  );

implementation

uses
//  U_Picclean,
  U_Main;

var
  FormIndex : Array [1..50]   of Word;     // 50 Formulate
  FormLength: Array [1..50]   of Word;     // 50 Formulate
  Text      : Array [1..3000] of string;   // mit insgesamt 3000 Texten
  TABText   : Array [1..200]  of string;   // 200 Tabellentexte (Aggr., Achsen,...)
  MSGText   : Array [1..300]  of string;   // 300 Melde/Fehlertexte


{--- get the text by section and number ---------------------------------------}
function GetTxt ( FormID    : WORD;
                  ResIndex  : Word;                   // Formular Text holen
                  DefStr    : STRING ) : STRING;
Var Index   : Integer;
    LastTxt : Integer;

BEGIN  { of GetTxt }
  if (ResIndex > 0) AND (FormID > 0) THEN
  BEGIN
    LastTxt :=            FormLength[FormID];         // Letzte Textnummer ermitteln
    Index   := ResIndex + FormIndex [FormID] - 1;     // Absolute Textnummer ermitteln

    if (Index>0) AND (Index <= LastTxt) AND (Text[Index] <> '')
      then Result := Text[Index]                      // Text vorhanden
      else Result := '!?' + DefStr;                   // Nein, Standardtext verwenden
  end
  else
    Result := '!?' + DefStr;	                        // Nein, Standardtext verwenden

END;   { of GetTxt }

{--- set language : read the textfile and get the sections and maximum --------}
{--- number of texts for every section ----------------------------------------}
PROCEDURE Set_Language ( Lng_ID : T_LngIDStr );
VAR IniFile     : TextFile;
    Lng_LibName : STRING;
    FilePath    : STRING;
    ActSectID   : INTEGER;
    ActTextNr   : INTEGER;
    TextCount   : INTEGER;

    NewLine     : BOOLEAN;

    TempLine    : STRING;
    TempSection : INTEGER;
    TempText    : STRING;
    TempNummer  : INTEGER;

    TempEntry   : STRING;
    TempValue   : STRING;

    DoLine      : BOOLEAN;

  {Wenn Sectionsname, dann Sectionsname von eckigen Klammern extrahieren}
  function GetSectionName (Line : STRING) : STRING;
  var
    PosAnf  : INTEGER;
    PosEnd  : INTEGER;
    TempStr : STRING;

  begin
    TempStr := Trim(Line);

    PosAnf  := Pos('[', TempStr);
    PosEnd  := Pos(']', TempStr);

    {Section als Ergebnis oder ''}
    if (PosEnd>PosAnf) and (PosEnd<>0) and (PosAnf<>0) then
      Result := Copy(TempStr,PosAnf+1,PosEnd-PosAnf-1)
    else
      Result := '';
  end;

  {Section ID des übergebenen Sectionsname ermitteln}
  function GetSectionID (Section : STRING) : INTEGER;
  var
    SectionIndex : INTEGER;
    Found        : BOOLEAN;

  begin
    Found        := FALSE;
    SectionIndex := 1;

    {Wenn Sondersection}
    if UpperCase(Section) = UpperCase('LANGUAGE') then
      Result := C_Language
    else
    if UpperCase(Section) = UpperCase('MSGText') then
      Result := C_MsgTxt
    else
    if UpperCase(Section) = UpperCase('TABText') then
      Result := C_TabTxt
    else begin
      {Wenn normale Section}
      while (SectionIndex <= FormularIDsMax) and (not Found) do begin
        if UpperCase(SectionArray[SectionIndex]) = UpperCase(Section) then Found := TRUE;
        INC(SectionIndex);
      end;

      {Passende Section ID zurückgeben oder 0}
      if Found then
        Result := SectionIndex-1
      else
        Result := 0;
    end;
  end;

  {Aktuelle Zeile in Nummer und Text separieren, linke Seite ist Zahl}
  procedure GetActLine(Line : STRING; ActSectID : INTEGER; var ActNummer : INTEGER; var ActText : STRING);
  var
    PosSep  : INTEGER;
    TempStr : STRING;

    TempNr  : STRING;
    TempName: STRING;

  begin
    TempStr := Trim(Line);

    {Position des Trennzeichens ermitteln}
    PosSep  := Pos('=', TempStr);

    {Wertepaar zuordnen}
    if (PosSep<>0) and (ActSectID<>0) then begin
      TempNr   := Trim(Copy(TempStr,1,PosSep-1));
      TempName := Trim(Copy(TempStr,PosSep+1,Length(TempStr)-PosSep));


      {evtl. vorhandene Anführungszeichen ausfiltern !}
      if Length(TempName) > 2 then begin
        if (TempName[1]='''') and (TempName[Length(TempName)]='''') then begin
          TempName := Copy(TempName,2,Length(TempName)-2);
        end;
      end;

      {Rückgabevariablen belegen}
      ActNummer := StrToInt(TempNr);
      ActText   := TempName;
    end
    else begin
      ActNummer := 0;
      ActText   := '';
    end;
  end;


  {Aktuelle Zeile in Variable und Text separieren, wie INI}
  procedure GetIniLine (Line : STRING; ActSectID : INTEGER; var ActEntry: STRING; var ActValue: STRING);
  var
    PosSep  : INTEGER;
    TempStr : STRING;

    TempEntry : STRING;
    TempValue : STRING;

  begin
    TempStr := Trim(Line);

    {Position des Trennzeichens ermitteln}
    PosSep  := Pos('=', TempStr);

    {Wertepaar zuordnen}
    if (PosSep<>0) and (ActSectID<0) then begin
      TempEntry := Trim(Copy(TempStr,1,PosSep-1));
      TempValue := Trim(Copy(TempStr,PosSep+1,Length(TempStr)-PosSep));


      {evtl. vorhandene Anführungszeichen ausfiltern !}
      if Length(TempValue) > 2 then begin
        if (TempValue[1]='''') and (TempValue[Length(TempValue)]='''') then begin
          TempValue := Copy(TempValue,2,Length(TempValue)-2);
        end;
      end;

      {Rückgabevariablen belegen}
      ActEntry := TempEntry;
      ActValue := TempValue;
    end
    else begin
      ActEntry := '';
      ActValue := '';
    end;
  end;


BEGIN  { of Set_Language_New }
  ActSectID   := 0;
  TextCount   := 1;

  FilePath    := act_exec_directory;

  Lng_LibName  := SlashSep(FilePath, 'Lang_'+Lng_ID+{~FIX~}'.txt'#0);

  Try
    {Sprachfile zuweisen}
    AssignFile(IniFile,Lng_LibName);
    Reset(IniFile);

    {Zeile für Zeile auslesen}
    while not EOF(IniFile) do begin
      Readln(IniFile, TempLine);


      {Prüfung ob String ein Kommentar ist}
      if Length(TempLine) > 0 then
        DoLine := Trim(TempLine)[1] <> ';'       // Kommentarzeilen beginnen mit einem ';'
      else
        DoLine := FALSE;

      if DoLine then begin
        TempSection := GetSectionID(GetSectionName(TempLine));

        if TempSection <> 0 then begin
          ActSectID := TempSection;

          if TempSection > 0 then begin
            FormIndex[ActSectID] := TextCount+1;
          end;
        end
        else begin
          if ActSectID > 0 then begin
            GetActLine(TempLine, ActSectID, TempNummer, TempText);

            if (TempNummer <> 0) and (TempText <> '~~~') then begin
              ActTextNr := FormIndex[ActSectID]+TempNummer-1;

              {Prüfen ob erstes Zeichen ein "\" ist um mehrzeilige Ausgaben zu ermöglichen}
              if Length(TempText)>0 then
                NewLine := TempText[1]='\'
              else
                NewLine := FALSE;

              if NewLine then begin
                Text[ActTextNr] := Text[ActTextNr] + #13#10 + Copy(TempText,2,Length(TempText)-1);
              end
              else begin
                Text[ActTextNr] := TempText;
                if ActTextNr>TextCount then TextCount := ActTextNr;
                FormLength[ActSectID] := TextCount;
              end;
            end;
          end
          else begin
            case ActSectID of
              C_Language  : begin
                              GetIniLine(TempLine, ActSectID, TempEntry, TempValue);

                              if UpperCase(TempEntry)=UpperCase('Charset') then begin
                                try
//                                  Lng_CharSet := StrToInt(TempValue);
                                except end;
                              end;

                            end;

              C_TabTxt    : begin
                              GetActLine(TempLine, ActSectID, TempNummer, TempText);
                              ActTextNr := TempNummer;
                              if (TempNummer <> 0) and (TempText <> '~~~') then begin

                                if Length(TempText)>0 then
                                  NewLine := TempText[1]='\'
                                else
                                  NewLine := FALSE;

                                if NewLine then begin
                                  TABText[ActTextNr] := TABText[ActTextNr] + #13#10 + Copy(TempText,2,Length(TempText)-1);
                                end
                                else begin
                                  TABText[ActTextNr] := TempText;
                                end;
                              end;
                            end;

              C_MsgTxt    : begin
                              GetActLine(TempLine, ActSectID, TempNummer, TempText);
                              ActTextNr := TempNummer;
                              if (TempNummer <> 0) and (TempText <> '~~~') then begin

                                if Length(TempText)>0 then
                                  NewLine := TempText[1]='\'
                                else
                                  NewLine := FALSE;

                                if NewLine then begin
                                  MSGText[ActTextNr] := MSGText[ActTextNr] + #13#10 + Copy(TempText,2,Length(TempText)-1);
                                end
                                else begin
                                  MSGText[ActTextNr] := TempText;
                                end;
                              end;
                            end;
            end;
          end;
        end;
      end;
    end;
    CloseFile(IniFile);
  except
    Application.MessageBox (PChar('Languagefile is missing. This program won´t work without a valid languagefile. Look for : "' + Lng_LibName ),
                                  PChar('Warning'),
                                  [smbOK]);
    Application.Terminate;
  end;
end;   { of Set_Language_NEW }

end.
