(*
one line to give the program's name and an idea of what it does.
Copyright (C) yyyy  name of author

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*)

unit lib1;

interface

uses
	classes,
	sysutils,
	Forms,
	Windows,
	Shellapi,
	dialogs,
	StrUtils;


	function	SlashSep(const Path, S: string): string;

	procedure GetFiles(const ADirectory : string;
                   Files            : TStringList;
                   WithPathes       : Boolean;
                   SubFolders       : Boolean;
                   GetSize          : Boolean;
                   SearchString     :	String);

	function	Make_Human_Size(size : double) : string;

	function	separate_string_to_get_tabcount(complex_string : String) : Integer;

	procedure separate_string_by_tab(complex_string : String);

  function	seperate_string_in_parts(whole_string,
																		middle_string,
                                    position : String): String;

  procedure move_memory_combos(var arrayname	:	array of String;
                               string_to_add	:	String);

//	function	get_version(Value1, Value2, Value3, Value4 : Integer): String;

	function	GetTheFileSize(Filename:string):integer;

	function	check_filename	(filename_to_check : String) : Boolean;

	function	check_filename_for_length	(filename_to_check : String;
																			 allowed_length	:	Integer) : Boolean;

  function  clear_all_until_last_slash ( path_and_file : String ) : string;

  function  get_no_of_chars (String_to_check    : String;
														 Char_to_search_for : String) : Integer;

	function	ExpandEnv(const S: String): String;

	// Externes Programm starten
	procedure Start_External_Program          (handle : hwnd;
																						 what_to_do,
																						 program_to_start,
																						 parameter,
																						 start_dir          : String;
																						 option             : Integer);

	function  get_version                     (                         )         : String; overload;

	// remove the filename and last separator from a complete string
	function  get_filename_from_complete_string(whole_string,
																						 separator          : String)       : String;

	function Version1IsBiggerThanVersion2			(Vers1,
																						 Vers2							:	String)				:	Boolean;

implementation

uses
	U_Main;

{--- Function to add slashes at end of Path if necessary -----------------------}
function SlashSep(const Path, S: string): string;
begin
  if Path <> '' then
  begin
		if AnsiLastChar(Path)^ <> '\' then
			Result := Path + '\' + S
    else
      Result := Path + S;
  end;
end;

{--- GetFiles -----------------------------------------------------------------}
procedure GetFiles(const ADirectory : string;
                   Files            : TStringList;
                   WithPathes       : Boolean;
                   SubFolders       : Boolean;
                   GetSize          : Boolean;
                   SearchString     :	String);

{  ADirectory		: string;	// Das zu durchsuchende Root-Verzeichnis              	}
{	 Files				: TStringList; // Die Dateiliste, die am Ende das Ergebnis enthält}
{	 WithPathes		: Boolean; // if true then the output is with whole pathes				}
{	 SubFolders		: Boolean; // Wenn true, werden auch alle Unterordner durchsucht	}
{	 GetSize			: Boolean; // if true then then the size of the files is listed		}
{	 SearchString	: String;  // the string to search for														}

var
  SearchRec	: TSearchRec;
  nStatus		: Integer;
  size 			: Double;

begin

  { Zuerst alle Dateien im aktuelle Verzeichnis finden												 }
	{ Anstatt *.* kann auch etwas anderes wie *.jpg oder *.gif eingegeben werden,}
  { um nur Dateien eines bestimmten Typs zu finden.                            }
  nStatus := FindFirst(PChar(SlashSep(ADirectory, SearchString)),  0, SearchRec);
  while nStatus = 0 do
  begin
    Application.ProcessMessages;

    {Cancel ???}
    if cancel_search = True then Break;

  	{Soll der Pfad mit angegeben werden}
  	if WithPathes then
	    SearchRec.Name	:=	SlashSep(ADirectory, SearchRec.Name);

		{Wenn Dateigroesse mit übergeben werden soll}
    if GetSize then
    begin

      {Mit oder ohne pfad}
			if WithPathes then
        size	:=	GetTheFileSize(SearchRec.Name)
      else
        size	:=	GetTheFileSize(SlashSep(ADirectory, SearchRec.Name));

	    Files.Add(SearchRec.Name + Make_Human_Size(size))
    end
    else
			Files.Add(SearchRec.Name);

    {Anzahl gefundene Files darstellen}
		F_Main.FolderScanListResultLab2.Caption	:=	IntToStr(Files.Count);
		F_Main.FolderScanListResultLab2.Refresh;

    {Anzahl durchsuchter Verzeichnisse}
		F_Main.FolderScanListDirCntLab2.Caption	:=	IntToStr(searched_dir_count);
		F_Main.FolderScanListDirCntLab2.Refresh;

    nStatus := FindNext(SearchRec);
  end;
	SysUtils.FindClose(SearchRec);

	{Als nächstes nach Unterverzeichnissen suchen und wenn benötigt durchsuchen}
  if SubFolders then
	begin
//    nStatus := FindFirst(PChar(SlashSep(ADirectory, '*.*')), faDirectory, SearchRec);
    nStatus := FindFirst(PChar(SlashSep(ADirectory, '*')), faDirectory, SearchRec);

    while nStatus = 0 do
    begin
      {Wenn es ein Verzeichnis ist, Rekursion verwenden}
      if ((SearchRec.Attr and faDirectory) <> 0) then
      begin
        if ( (SearchRec.Name <> '.') and (SearchRec.Name <> '..') )  then
        begin
          Application.ProcessMessages;

          {Cancel ???}
					if cancel_search then Break;

          GetFiles(SlashSep(ADirectory, SearchRec.Name),
                   Files,
                   WithPathes,
									 SubFolders,
                   GetSize,
                   SearchString);
        end;
        {Counter for directories}
        searched_dir_count	:=	searched_dir_count + 1;
      end;
			nStatus := FindNext(SearchRec)
    end;
		SysUtils.FindClose(SearchRec);
  end;
end;

{--- wandeln des Doublewertes in einen formatierten String --------------------}
function Make_Human_Size(size : double) : string;
var
	fsize	:	String;
begin
  {if bigger than MB}
  if size > 1048576 then
  begin
    size		:=	size / 1024 / 1024;
    fsize		:=	Format('%7.3f', [size]);
    result	:=	fsize + ' MB';
	end
  {if bigger than kB}
  else if	size > 1024 then
  begin
    size		:=	size / 1024;
    fsize		:=	Format('%7.0f', [size]);
    result	:=	fsize + ' kB';
  end
  {only bytes}
  else if	size > 0 then
  begin
    fsize		:=	Format('%4.0f', [size]);
    result	:=	fsize + ' Byte';
  end
	else
    result	:=	' <no size>';
end;


{--- Procedure um Strings anhand des Tabulators zu zerlegen. ------------------}
procedure separate_string_by_tab(complex_string : String);
var
  i           : Integer;
  i1          : Integer;
  tabcount    : Integer;
  temp_string : String;
  last_part   : Boolean;
begin
  last_part :=  False;

  {for every tab in the first line of the sourcefile}
  for tabcount := 0 to F_Main.CDListe_StringGrid.ColCount - 1 do
  begin
    temp_string :=  '';

    {get porsition of next tab}
    i1  :=  AnsiPos(#9, complex_string);

    {if no tab exists > end of string}
    if i1 = 0 then
    begin
      i1  :=  Length(complex_string) + 1;
      last_part :=  True;
		end;

    {get text before tab}
    for i := 1 to i1 - 1 do
    begin
      temp_string := temp_string + complex_string[i];
    end;

    {put text to array}
    cdlist_tab_values[tabcount]  := temp_string;

    {replace text with none for next in row}
    if last_part then
      complex_string  :=  StringReplace(complex_string, temp_string ,'', [])
		else
      complex_string  :=  StringReplace(complex_string, temp_string + #9,'', []);

  end;

end;

{--- Ein FIFO mit einem Array : String wird eingefügt -------------------------}
procedure move_memory_combos(var arrayname	:	array of String;
                             string_to_add	:	String);
var
	i	:	Integer;
begin
  for i := 	(Length(arrayname) - 1) downto 0 do
  begin
    if i > 0 then
    	arrayname[i]	:=	arrayname[i - 1]
    else
      arrayname[i]	:=  string_to_add;
  end;
end;

{--- Procedure um Strings anhand des Tabulators zu zerlegen. ------------------}
function separate_string_to_get_tabcount(complex_string : String) : Integer;
var
  i           : Integer;
  i1          : Integer;
  temp_string : String;
begin
	Result  :=  0;

  {Solange tab vorhanden dann inhalt bis zum nächsten tab entfernen}
  repeat
    i1 := AnsiPos(#9, complex_string);

    if i1 > 0 then
    begin
      temp_string :=  '';
      for i :=  1 to i1 - 1 do
      begin
        temp_string := temp_string + complex_string[i];
      end;
      Result  :=  Result + 1;
			complex_string  :=  StringReplace(complex_string, temp_string + #9,'', []);
    end
    else
    begin
      if Length(complex_string) > 0 then
				Result  :=  Result + 1;
    end;
  until i1  = 0;
end;

(*
{--- VersionsNr ermitteln und formatierten String liefern ---------------------}
function get_version(Value1, Value2, Value3, Value4 : Integer): String;
var
  aFileName       : array [0..MAX_PATH] of Char;
  pdwHandle       : DWORD;
  nInfoSize       : DWORD;
  pFileInfo       : Pointer;
  pFixFInfo       : PVSFixedFileInfo;
  nFixFInfo       : DWORD;
  Place1					: String;
  Place2					: String;
  Place3					: String;
  Place4					: String;
begin
  GetModuleFileName(0, aFileName, MAX_PATH);
  pdwHandle := 0;
  nInfoSize := GetFileVersionInfoSize(aFileName, pdwHandle);
  if nInfoSize <> 0 then
		pFileInfo := GetMemory(nInfoSize)
  else
    pFileInfo := nil;
  if Assigned(pFileInfo) then
  try
    if GetFileVersionInfo(aFileName, pdwHandle, nInfoSize, pFileInfo) then
    begin
    // den vordefinierten Info-Block holen, der in jeder
    // Versionsinformation enthalten sein sollte.
    pFixFInfo := nil;
    nFixFInfo := 0;
      if VerQueryValue(pFileInfo, '\', Pointer(pFixFInfo), nFixFInfo) then
      begin
      // Bei von Delphi erzeugten Info-Blöcken sind die Dateiversion
			// und die Produktversion im FixedInfo-Block immer gleich.
        Place1	:=	Format('%d', [HiWord(pFixFInfo^.dwFileVersionMS)]);
        Place2	:=	Format('%d', [LoWord(pFixFInfo^.dwFileVersionMS)]);
        Place3	:=	Format('%d', [HiWord(pFixFInfo^.dwFileVersionLS)]);
        Place4	:=	Format('%d', [LoWord(pFixFInfo^.dwFileVersionLS)]);

        {String zusammenbasteln}
        if Value1 = 1 then
					result	:=	Place1;

        if Value2 = 1 then
        begin
        	if result <> '' then
						result	:=	result + '.' + Place2
  	      else
						result	:=	result + Place2;
        end;

        if Value3 = 1 then
        begin
        	if result <> '' then
						result	:=	result + '.' + Place3
  	      else
    	    	result	:=	result + Place3;
        end;

        if Value4 = 1 then
        begin
        	if result <> '' then
						result	:=	result + '.' + Place4
  	      else
						result	:=	result + Place4;
        end;
  	  end;
    end;
  finally
  FreeMemory(pFileInfo);
	end;
end;
*)

{--- seperate string into three parts, middle part must me given --------------}
function seperate_string_in_parts(whole_string,
																	middle_string,
                                  position : String) : String;
var
	i1	:	integer;
  temp_string	:	String;
begin
	temp_string	:=	'';

  {get part before middle string}
  if position = 'start' then
  begin
    for i1 := 1 to (AnsiPos(middle_string, whole_string) - 1) do
    begin
      temp_string	:=	temp_string	+ whole_string[i1];
    end;
    result	:=  temp_string;
  end;

  {get part after middle string}
  if position = 'end' then
  begin
    {get first part and remove it}
    for i1 := 1 to (AnsiPos(middle_string, whole_string) - 1) do
    begin
      temp_string	:=	temp_string	+ whole_string[i1];
    end;
    whole_string	:=	StringReplace(whole_string, temp_string, '', []);

    {remove middle_string}
		whole_string	:=	StringReplace(whole_string, middle_string, '', []);

    result	:=  whole_string;
  end;
end;

{--- get the file size --------------------------------------------------------}
function GetTheFileSize(Filename:string):integer;
var
	SR : TSearchRec;

begin {of MyFileSize}
  if FindFirst(Filename, faAnyFile, SR)=0 then begin
    Result:=SR.Size;
		SysUtils.FindClose(SR);
  end
  else
    Result:=-1;
end; {of MyFileSize}

(*
{--- Externes Programm öffnen >>> DB.exe --------------------------------------}
procedure Start_External_Program (handle : hwnd;
                                  what_to_do,
                                  program_to_start,
                                  parameter,
                                  start_dir : String;
                                  option : Integer);
var
  i				: Integer;
  msg   	: String;

begin
  i :=  shellexecute(handle,
                     PChar(what_to_do),
                     PChar(program_to_start),
                     PChar(parameter),
                     PChar(start_dir),
                     option);

  {Fehlercodes}
  if i <= 32 then
  begin
		case i of
      0  : msg :=  'Zuwenig Speicher, ausfuehbare Datei war zerstoert, Relokationswerte waren ungueltig';
      2  : msg :=  'Datei wurde nicht gefunden';
      3  : msg :=  'Verzeichnis wurde nicht gefunden';
      5  : msg :=  'Fehler beim gemeinsamen Zugriff auf eine Datei im Netz oder Fehler beim Zugriff auf eine gesperrte Datei im Netz.';
      6  : msg :=  'Bibliothek forderte separate Datensegmente fuer jede Task an.';
      8  : msg :=  'Zu wenig Speicher um die Anwendung zu starten.';
      10 : msg :=  'Falsche Windows-Version.';
      11 : msg :=  'Ungueltige ausfuehrbare Datei. Entweder keine Windows-Anwendung oder Fehler in der EXE-Datei.';
      12 : msg :=  'Anwendung fuer ein anderes Betriebssytem.';
      13 : msg :=  'Anwendung fuer MS-DOS 4.0 .';
      14 : msg :=  'Typ der ausfuehrbaren Datei unbekannt.';
      15 : msg :=  'Versuch eine Real-Mode-Anwendung zu starten.';
      19 : msg :=  'Versuch eine komprimierte ausfuehrbare Datei zu laden. Die Datei muss dekomprimiert werden, bevor sie geladen werden kann.';
			20 : msg :=  'Ungueltige DLL. Eine der DLLs. die benoetigt wurde um die Anwendung auszufuehren, war beschaedigt.';
    end;
  end;

  {Wenn Fehler dann Ausgabe in Status}
	if msg <> '' then
    ShowMessage(msg);
end;
*)

{--- check filename for unexpected characters ---------------------------------}
function	check_filename	(filename_to_check : String) : Boolean;
var
	i	:	Integer;
  characters_not_ok			:	Array[0..100] of Char;
  characters_not_ok_str	:	String;

begin
	result	:=	False;

	characters_not_ok_str	:=	'äöü?ß´`';

  {fill the array with forbidden characters}
  for i := 0 to (Length(characters_not_ok_str) - 1) do
		characters_not_ok[i]	:=	characters_not_ok_str[i];


  {check the filename for every forbidden character}
  for i := 0 to (Length(characters_not_ok_str) - 1) do
	begin
    if AnsiPos(characters_not_ok[i], filename_to_check) > 0 then
    begin
      result	:=	True;
      break;
    end
    else
      result	:=	False;
  end;

end;

{--- check filename for length ------------------------------------------------}
function	check_filename_for_length	(filename_to_check : String;
																		 allowed_length	:	Integer) : Boolean;
begin
	result	:=	False;

  {check the filename for every forbidden character}
	if Length(filename_to_check) > allowed_length then
    result	:=	True;

end;

function clear_all_until_last_slash ( path_and_file : String ) : string;
begin
  result  :=  AnsiStrRScan((PChar(path_and_file)) , '/');
  result  :=  StringReplace(result, '/', '', [rfReplaceAll]);
end;

{--- check string for given no. of a char -------------------------------------}
function Get_no_of_chars(String_to_check    : String;
                         Char_to_search_for : String) : Integer;
var
  i : Integer;
begin
  i :=  0;

  repeat
    if AnsiPos(Char_to_search_for, String_to_check) > 0 then
    begin
      String_to_check :=  StringReplace(String_to_check, Char_to_search_for, '', []);
      i :=  i + 1;
		end;
  until AnsiPos(Char_to_search_for, String_to_check) < 1;

  Result  :=  i;
end;

function ExpandEnv(const S: String): String;
var i: Integer;
begin
	i := ExpandEnvironmentStrings(PChar(S), nil, 0);
	SetLength(Result, i - 1);
	ExpandEnvironmentStrings(PChar(S), PChar(Result), i);
end;

{--- Externes Programm öffnen >>> DB.exe --------------------------------------}
procedure Start_External_Program (handle : hwnd;
																	what_to_do,
																	program_to_start,
																	parameter,
																	start_dir : String;
																	option : Integer);
var
	i				: Integer;
	msg   	: String;

begin
	i :=  shellexecute(handle,
										 PChar(what_to_do),
										 PChar(program_to_start),
										 PChar(parameter),
										 PChar(start_dir),
										 option);

	{Fehlercodes}
	if i <= 32 then
	begin
		case i of
			0  : msg :=  'Zuwenig Speicher, ausfuehbare Datei war zerstoert, Relokationswerte waren ungueltig';
			2  : msg :=  'Datei wurde nicht gefunden';
			3  : msg :=  'Verzeichnis wurde nicht gefunden';
			5  : msg :=  'Fehler beim gemeinsamen Zugriff auf eine Datei im Netz oder Fehler beim Zugriff auf eine gesperrte Datei im Netz.';
			6  : msg :=  'Bibliothek forderte separate Datensegmente fuer jede Task an.';
			8  : msg :=  'Zu wenig Speicher um die Anwendung zu starten.';
			10 : msg :=  'Falsche Windows-Version.';
			11 : msg :=  'Ungueltige ausfuehrbare Datei. Entweder keine Windows-Anwendung oder Fehler in der EXE-Datei.';
			12 : msg :=  'Anwendung fuer ein anderes Betriebssytem.';
			13 : msg :=  'Anwendung fuer MS-DOS 4.0 .';
			14 : msg :=  'Typ der ausfuehrbaren Datei unbekannt.';
			15 : msg :=  'Versuch eine Real-Mode-Anwendung zu starten.';
			19 : msg :=  'Versuch eine komprimierte ausfuehrbare Datei zu laden. Die Datei muss dekomprimiert werden, bevor sie geladen werden kann.';
			20 : msg :=  'Ungueltige DLL. Eine der DLLs. die benoetigt wurde um die Anwendung auszufuehren, war beschaedigt.';
		end;
	end;

	{Wenn Fehler dann Ausgabe in Status}
	if msg <> '' then
		ShowMessage(msg);
end;

// -----------------------------------------------------------------------------
function get_version() : String;
var
	aFileName       : array [0..MAX_PATH] of Char;
	pdwHandle       : DWORD;
	nInfoSize       : DWORD;
	pFileInfo       : Pointer;
	pFixFInfo       : PVSFixedFileInfo;
	nFixFInfo       : DWORD;
begin
	GetModuleFileName(0, aFileName, MAX_PATH);
	pdwHandle := 0;
	nInfoSize := GetFileVersionInfoSize(aFileName, pdwHandle);
	if nInfoSize <> 0 then
		pFileInfo := GetMemory(nInfoSize)
	else
		pFileInfo := nil;
	if Assigned(pFileInfo) then
	try
		if GetFileVersionInfo(aFileName, pdwHandle, nInfoSize, pFileInfo) then
		begin
		// den vordefinierten Info-Block holen, der in jeder
		// Versionsinformation enthalten sein sollte.
		pFixFInfo := nil;
		nFixFInfo := 0;
			if VerQueryValue(pFileInfo, '\', Pointer(pFixFInfo), nFixFInfo) then
			begin
			// Bei von Delphi erzeugten Info-Blöcken sind die Dateiversion
			// und die Produktversion im FixedInfo-Block immer gleich.
				get_version := Format('%d.%d.%d.%d',             //  Original mit allen 4 Nummern
														 [HiWord(pFixFInfo^.dwFileVersionMS),
															LoWord(pFixFInfo^.dwFileVersionMS),
															HiWord(pFixFInfo^.dwFileVersionLS),
															LoWord(pFixFInfo^.dwFileVersionLS)]);
			end;
		end;
	finally
	FreeMemory(pFileInfo);
	end;
end;

{--- remove the filename and last separator from a complete string ------------}
function  get_filename_from_complete_string   (whole_string,
																							 separator          : String)       : String;
var
	L,
	i : Integer;
begin
	if FileExists(whole_string) then
	begin

		L := Length(whole_string);
		for i := L downto 1 do
		begin
			if whole_string[i] = separator then
			begin
				Result := Copy(whole_string, i + 1 , L - i  + 1);
				break;
			end;
		end;
	end
	else
		Result  :=  '';
end;

function Version1IsBiggerThanVersion2(Vers1,Vers2:String):Boolean;
var
	ComCount1,
	ComCount2   : Integer;
	pos1,pos2   : Integer;
	oldPos1,
	oldPos2     : Integer;
	temps1,
	temps2      : string;
	lang1,
	lang2       : Integer;
	ende        : Boolean;
begin
	if (Vers1 = '') or (Vers2 = '') then
	begin
		Result	:=	False;
		exit;
	end;

	ComCount1   := 0;
	ComCount2   := 0;

	Pos1:=Pos('.',Vers1);
	while Pos1 <> 0 do
	begin
		Inc(ComCount1);
		Pos1:=PosEx('.',Vers1,Pos1+1);
	end;

	Pos1:=Pos('.',Vers2);
	while Pos1 <> 0 do
	begin
		Inc(ComCount2);
		Pos1:=PosEx('.',Vers2,Pos1+1);
	end;

	if ComCount1 <> ComCount2 then  //versions-Strings müssen das gleiche Format besitzen
		Result := false
	else
	begin
		try
			Pos1 := 0;
			Pos2 := 0;
			Ende := false;

			repeat
				oldPos1 := Pos1;
				oldPos2 := Pos2;
				Pos1    := PosEx('.',Vers1,oldPos1+1);
				Pos2    := PosEx('.',Vers2,oldPos2+1);
				if Pos1 <> 0 then
				begin
					// Abstand neuer Pkt - alter Pkt -1(für Punkt selber)
					lang1:=Pos1-oldPos1-1;
					lang2:=Pos2-oldPos2-1;
				end
				else
				begin                //beim Letzen Abstand Ende zum letzten Pkt.
					lang1:=Length(Vers1)-oldPos1;
					lang2:=Length(Vers2)-oldPos2;
				end;

				temps1:=copy(Vers1,oldPos1+1,lang1);
				temps2:=copy(Vers2,oldPos2+1,lang2);
				comCount1:= StrtoInt(temps1);
				comCount2:= StrtoInt(temps2);
				if (comCount1 = comCount2) then
					result  :=false
				else
				begin
					Ende    := true;
					result  := (comCount1 > comCount2); // else (comCount1 < comCount2)
				end;

			until((Pos1 = 0) or (Pos2 = 0) or (Ende));

		except
			Result:=false;
		end;
	end;
end;

end.
