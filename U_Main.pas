unit U_Main;

interface

uses
  SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms,
  QDialogs, QStdCtrls, QButtons, QComCtrls, QMenus, IniFiles, QExtCtrls,
  QGrids, QFileCtrls, Libc;

type
  TF_Main = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Multi_Dir_GroupBox: TGroupBox;
    Multi_Dir_ListBox: TListBox;
    Load_From_Button: TButton;
    Save_To_Button: TButton;
    Sel_All_Button: TButton;
    Sel_None_Button: TButton;
    Clear_Sel_Button: TButton;
    Clear_All_Button: TButton;
    Subdir_CheckBox: TCheckBox;
    Output_with_path_CB: TCheckBox;
    Filter_GroupBox: TGroupBox;
    Filter_Edit: TEdit;
    filter_ComboBox: TComboBox;
    Own_Filter_CheckBox: TCheckBox;
    Sel_Dir_Btn: TBitBtn;
    Output_with_filesize_CB: TCheckBox;
    TXT_Output_Btn: TBitBtn;
    HTML_OutputButton: TBitBtn;
    Go_Btn: TBitBtn;
    Search_Time_Lab: TLabel;
    Dir_Count_Label: TLabel;
    Result_Label: TLabel;
    Pacman_Btn: TSpeedButton;
    MP3_ListBox: TListBox;
    Search_ProgressBar: TProgressBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Help1: TMenuItem;
    Setup1: TMenuItem;
    Exit1: TMenuItem;
    NameCheck_ListBox: TListBox;
    CDListe_StringGrid: TStringGrid;
    Pacman_Panel: TPanel;
    Pacman_Speed_Edit: TEdit;
    Start_Pacman_Btn: TButton;
    Close_Pacman_Btn: TBitBtn;
    CDList_ProgressBar: TProgressBar;
    HTML_OutputButton3: TBitBtn;
    CDLIst_Choose_GB: TGroupBox;
    Choose_CDList_Source_File_Btn: TSpeedButton;
    CD_List_Open_File_Lab: TLabel;
    Go_Btn3: TBitBtn;
    CDList_Source_File_CB: TComboBox;
    MP3List_PopupMenu: TPopupMenu;
    checkfilenames1: TMenuItem;
    checkfilenamesforallowedlength1: TMenuItem;
    Joliet601: TMenuItem;
    ISO9660Level1121: TMenuItem;
    ISO9660Level2311: TMenuItem;
    Romeo1281: TMenuItem;
    Pacman_Move_Timer: TTimer;
    CDList_Popup: TPopupMenu;
    Dateibearbeiten1: TMenuItem;
    DateiausListeentfernen1: TMenuItem;
    Char_Count_Lab: TLabel;
    Char_Count_Lab2: TLabel;
    CD_Archive_View_All_Files_Btn: TLabel;
    Archive_GB: TGroupBox;
    Choose_New_Archive_Btn: TSpeedButton;
    Choose_Archiv_Lab: TLabel;
    View_Archive_Btn: TBitBtn;
    New_Archive_Edit_CB: TComboBox;
    CD_Archive_ListBox: TListBox;
    Add_A_Disk_GB: TGroupBox;
    Choose_Search_Path: TSpeedButton;
    Archive_Path_to_read_in_Lab: TLabel;
    Search_Path_Edit: TEdit;
    GO_Btn2: TBitBtn;
    Save_Single_CD_Btn: TBitBtn;
    CD_Archive_TXT_Output: TBitBtn;
    FileListView1: TFileListView;
    CD_Single_SaveDialog: TSaveDialog;
    checkfilenamesfornoof1: TMenuItem;
    AboutMP3Toolbox1: TMenuItem;
    Result_File_SpeedButton: TSpeedButton;
    CDList_Template_Label: TLabel;
    Result_File_ComboBox: TComboBox;
    Template_OpenDialog: TOpenDialog;
    CDList_Template_ComboBox: TComboBox;
    Result_File_Label: TLabel;
    CDList_Template_SpeedButton: TSpeedButton;
    Result_File_SaveDialog: TSaveDialog;
    CDList_Source_File_OpenDialog: TOpenDialog;
    CDList_Result_Label: TLabel;
    procedure Sel_Dir_BtnClick(Sender: TObject);
    procedure Close_Btn1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Load_From_ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Save_To_ButtonClick(Sender: TObject);
    procedure Sel_All_ButtonClick(Sender: TObject);
    procedure Sel_None_ButtonClick(Sender: TObject);
    procedure Clear_Sel_ButtonClick(Sender: TObject);
    procedure Clear_All_ButtonClick(Sender: TObject);
    procedure Own_Filter_CheckBoxClick(Sender: TObject);
    procedure filter_ComboBoxChange(Sender: TObject);
    procedure Multi_Dir_ListBoxMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Go_BtnClick(Sender: TObject);
    procedure Subdir_CheckBoxClick(Sender: TObject);
    procedure Output_with_path_CBClick(Sender: TObject);
    procedure Output_with_filesize_CBClick(Sender: TObject);
    procedure TXT_Output_BtnClick(Sender: TObject);
    procedure Setup1Click(Sender: TObject);
    procedure HTML_OutputButtonClick(Sender: TObject);
    procedure checkfilenames1Click(Sender: TObject);
    procedure Joliet601Click(Sender: TObject);
    procedure ISO9660Level1121Click(Sender: TObject);
    procedure ISO9660Level2311Click(Sender: TObject);
    procedure Romeo1281Click(Sender: TObject);
    procedure MP3List_PopupMenuPopup(Sender: TObject);
    procedure MP3_ListBoxClick(Sender: TObject);
    procedure Start_Pacman_BtnClick(Sender: TObject);
    procedure Close_Pacman_BtnClick(Sender: TObject);
    procedure Pacman_Speed_EditChange(Sender: TObject);
    procedure Pacman_Move_TimerTimer(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Go_Btn3Click(Sender: TObject);
    procedure Go_Btn3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Choose_CDList_Source_File_BtnClick(Sender: TObject);
    procedure CDList_Close_BtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure HTML_OutputButton3Click(Sender: TObject);
    procedure Dateibearbeiten1Click(Sender: TObject);
    procedure DateiausListeentfernen1Click(Sender: TObject);
    procedure init_text(Sender:TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MP3_ListBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CD_Archive_Close_BtnClick(Sender: TObject);
    procedure Choose_Search_PathClick(Sender: TObject);
    procedure View_Archive_BtnClick(Sender: TObject);
    procedure Choose_New_Archive_BtnClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FileListView1Click(Sender: TObject);
    procedure GO_Btn2Click(Sender: TObject);
    procedure Save_Single_CD_BtnClick(Sender: TObject);
    procedure checkfilenamesfornoof1Click(Sender: TObject);
    procedure AboutMP3Toolbox1Click(Sender: TObject);
    procedure NameCheck_ListBoxMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Result_File_SpeedButtonClick(Sender: TObject);
    procedure CDList_Template_SpeedButtonClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

type
  TASCII_File = class(TObject)
    CDList_Result_Label: TLabel;
//    procedure CDList_Template_SpeedButtonClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  F_Main: TF_Main;
  act_exec_directory                  : String;             //  aktuelles Verzeichnis
  searched_dir_count									:	Integer;						//	anzahl durchsuchte Verzeichnisse.
  cancel_search								        :	Boolean;            //  Suche abbrechen
  gui_language                        : String;             //  Sprache
  ini_file_name                       : string;

  start_search_time                   : TDateTime;          //  Startzeitpunkt der Suche
  end_search_time                     : TDateTime;          //  Stopzeitpunkt der Suche

  pacman_adjustment_visible           : Boolean;						//	Soll PacmanBox sichtbar sein
  pacman_speed												:	Integer;						//	Speed for pacman
  pacman_direction                    : Boolean;            //  Welche Richtung soll der Pacman laufen

  text_files_output_path			        :	String;							//	Pfad wo Text-Dateien gesichert werden sollen.
  html_files_output_path			        :	String;							//	Pfad wo HTML-Dateien gesichert werden sollen.

  {Variablen für MP3Liste}
  mp3list_html_multi_output		        :	Integer;            //  0 = single page ; 1 = one page for everey character
  mp3list_html_output_file		        :	String;             //  Name der HTML-Ausgabedatei
  mp3list_text_output_file            : String;             //  Name der Text-Ausgabedatei
  mp3list_single_template_file			  : String;             //  path and name of the template file
  mp3list_multi_template_file					: String;             //  path and name of the multi template file
  mp3list_result_count								:	Integer;            //	Zähler für Suchergebnis
  mp3list_html_file_name              : String;
  mp3list_html_file_ending            : String;
  mp3list_text_files_zip              : Boolean;
  mp3list_text_files_delete_after_zip : Boolean;
  mp3list_html_files_zip              : Boolean;
  mp3list_html_files_delete_after_zip : Boolean;
  mp3list_Character_stringlists       : array[0..26]  of TStringList;

  {Variablen für CD-Archive}
  cdarchive_path_to_read_in		        : String;
  cdarchive_path_to_act_archive	      : String;
  cdarchive_last_used_pathes          :	array[0..9]		of String;	//	die letzten 10 Pfade werden gemerkt

  {Variablen für CD-Liste}
  cdlist_last_used_pathes             :	array[0..9]		of String;	//	die letzten 10 Pfade werden gemerkt
  cdlist_last_used_export_files       :	array[0..9]		of String;	//	die letzten 10 Pfade werden gemerkt
  cdlist_last_used_template_files     :	array[0..9]		of String;	//	die letzten 10 Pfade werden gemerkt
  cdlist_tab_values                   :	array[0..99]	of String;	//	100 Tabs sind in quelldatei möglich
  cdlist_result_count								  :	Integer;                  //	Zähler für Suchergebnis
  cdlist_html_file_name               : String;
  cdlist_html_file_ending             : String;
  cdlist_text_files_zip               : Boolean;
  cdlist_text_files_delete_after_zip  : Boolean;
  cdlist_html_files_zip               : Boolean;
  cdlist_html_files_delete_after_zip  : Boolean;

  const version =  '1.1.14';

implementation

{$R *.xfm}
{$R mp3tb_img.res}

uses
  lib1,
  lib_html_output,
  U_Setup,
  U_Language, U_About;

var
  Ini           : TIniFile;
  init_ok       : Boolean;

  search_filter_expression            : string;
  search_subdir	  						        :	Boolean ;							//	Unterverzeichnisse durchsuchen
  output_with_pathes                  :	Boolean ;							//	Ausgabe mit Pfaden
  output_with_filesize                :	Boolean ;							//	Ausgabe mit Dateigroesse

  search_status								        :	Boolean;              //  Suchstatus

{--- Formular erzeugen --------------------------------------------------------}
procedure TF_Main.FormCreate(Sender: TObject);
var
  i :Integer;
begin
  init_ok :=  True;

  ini_file_name               :=  '/home/mark/.mp3toolbox/mp3toolbox.cfg';

  for i := 0 to Length(mp3list_Character_stringlists) do
    mp3list_Character_stringlists[i]  :=  TStringList.Create;


  if not FileExists(ini_file_name) then
  begin
//    init_ok                   :=  False;
    Load_From_Button.Enabled  :=  False;
  end
  else
  begin
    {Begin: INI-Datei oeffnen und werte setzen}
    Ini := TIniFile.Create(ini_file_name);

    {Sprache auslesen}
    gui_language          	            :=	Ini.ReadString ('GENERAL',   'gui_language',    'GB');
    text_files_output_path	            :=	Ini.ReadString ('GENERAL',   'textdateien',     act_exec_directory);
    html_files_output_path	            :=	Ini.ReadString ('GENERAL',   'htmldateien',     act_exec_directory);
    pacman_speed											  :=	Ini.ReadInteger('GENERAL',   'pacmanspeed',     100);

    mp3list_single_template_file			  :=  Ini.ReadString ('MP3LIST',   'single_template', SlashSep(act_exec_directory, 'templates\mp3list-template.html'));
    mp3list_multi_template_file				  :=  Ini.ReadString ('MP3LIST',   'multi_template', 	SlashSep(act_exec_directory, 'templates\mp3list-letter-template.html'));
    mp3list_html_multi_output           :=	Ini.ReadInteger('MP3LIST',   'multi_output',    0);
    mp3list_html_file_name				      :=  Ini.ReadString ('MP3LIST',   'mp3list_html_file_name', 	  'mp3list');
    mp3list_html_file_ending				    :=  Ini.ReadString ('MP3LIST',   'mp3list_html_file_ending',  '.html');
    mp3list_text_files_zip	            :=	Ini.ReadBool   ('MP3LIST',   'zip_text_files',  False);
    mp3list_text_files_delete_after_zip :=	Ini.ReadBool   ('MP3LIST',   'text_files_delete_after_zip',  False);
    mp3list_html_files_zip              :=	Ini.ReadBool   ('MP3LIST',   'zip_html_files',  False);
    mp3list_html_files_delete_after_zip :=	Ini.ReadBool   ('MP3LIST',   'html_files_delete_after_zip',  False);

    cdarchive_path_to_read_in		        :=  Ini.ReadString ('CDARCHIV',  'SINGLEDISKPATH',  'C:\');
    for i := 0 to 9 do
      cdarchive_last_used_pathes[i]	    :=  Ini.ReadString ('CDARCHIV',  'SourcePath'+IntToStr(i), '');

    cdarchive_path_to_act_archive       :=	cdarchive_last_used_pathes[0];

    for i := 0 to 9 do
      cdlist_last_used_pathes[i]	      :=  Ini.ReadString ('CDLIST',    'SourcePath'+IntToStr(i), '');

    for i := 0 to 9 do
      cdlist_last_used_export_files[i]  :=  Ini.ReadString ('CDLIST',    'export_files'+IntToStr(i), '');

    for i := 0 to 9 do
      cdlist_last_used_template_files[i]:=  Ini.ReadString ('CDLIST',    'template_files'+IntToStr(i), '');

    cdlist_text_files_zip	              :=	Ini.ReadBool   ('CDLIST',    'zip_text_files',  False);
    cdlist_text_files_delete_after_zip  :=	Ini.ReadBool   ('CDLIST',    'text_files_delete_after_zip',  False);
    cdlist_html_files_zip               :=	Ini.ReadBool   ('CDLIST',    'zip_html_files',  False);
    cdlist_html_files_delete_after_zip  :=	Ini.ReadBool   ('CDLIST',    'html_files_delete_after_zip',  False);





    pacman_adjustment_visible         :=  Ini.ReadBool   ('DEVELOP',   'PACMAN_ADJUSTMENT', False);
    Ini.Free;
    {End: INI-Datei oeffnen und werte setzen}

    mp3list_html_output_file    :=	mp3list_html_file_name + mp3list_html_file_ending;
    mp3list_text_output_file    :=  mp3list_html_file_name + '.txt';
  end;

  {Set filter-options}
	filter_ComboBox.ItemIndex		:=	0;	 //	default is mp3
	search_filter_expression		:=	filter_ComboBox.Items[filter_ComboBox.ItemIndex];


  F_Main.Caption :=  'mp3toolbox version ' + version;
//  Form1.Caption :=  'mp3toolbox version ' + get_version(1,1,0,1);


  GetDir(0, act_exec_directory);

  output_with_pathes    :=  False;
  output_with_filesize  :=  False;
  cancel_search     	  :=	False;

  {Searchstatus : False = not activ }
  {               True  = activ     }
  search_status         :=  False;

	{fill subdir variable}
  if Subdir_CheckBox.Checked = True then
  	search_subdir		:=	True
  else
  	search_subdir		:=	False;

  {Pacman}
  if pacman_adjustment_visible  =  True then
    Pacman_Panel.Visible  :=  True;
  Pacman_Speed_Edit.Text			:=  IntToStr(pacman_speed);
  Pacman_Move_Timer.Interval  :=  pacman_speed;


  {Sprache}
  Set_Language(gui_language);
  init_text(Sender);
//  Set_Language(Reg.language);

end;

{--- If form is resized -------------------------------------------------------}
procedure TF_Main.FormResize(Sender: TObject);
var
  i : Integer;
begin
  {Allgemein}
  PageControl1.Width      	:=	F_Main.ClientWidth - 6;
  PageControl1.Height     	:=	F_Main.ClientHeight;
  {MP3Liste}
	MP3_ListBox.Width					:=	PageControl1.ClientWidth  - 10;
	MP3_ListBox.Height				:=	PageControl1.ClientHeight - 208;
  NameCheck_ListBox.Width		:=  MP3_ListBox.ClientWidth   - 32;
  NameCheck_ListBox.Height  :=  MP3_ListBox.ClientHeight  - 32;

	{CD-Archive}
  CD_Archive_ListBox.Width	:=	PageControl1.ClientWidth  - 200;
	CD_Archive_ListBox.Height	:=	PageControl1.ClientHeight - 170;
  FileListView1.Width      	:=  160;
  FileListView1.Height     	:=	PageControl1.ClientHeight - 170;


  {CD-Liste}
  CDListe_StringGrid.Width  :=	PageControl1.ClientWidth  - 6;
  CDListe_StringGrid.Height :=  PageControl1.ClientHeight - 144;

  for i := 0 to CDListe_StringGrid.ColCount - 1 do
  begin
    CDListe_StringGrid.ColWidths[i] :=  (CDListe_StringGrid.ClientWidth - 19 ) div CDListe_StringGrid.ColCount;
  end;
end;

{--- Menu : Show Setup Form ---------------------------------------------------}
procedure TF_Main.Setup1Click(Sender: TObject);
begin
  F_Setup.Show;
end;

{--- OnShow -------------------------------------------------------------------}
procedure TF_Main.FormShow(Sender: TObject);
begin
  F_Main.Width              :=  Screen.Width;
  F_Main.Height             :=  Screen.Height;
end;

{--- OnActivate ---------------------------------------------------------------}
procedure TF_Main.FormActivate(Sender: TObject);
begin
  Set_Language(gui_language);
  init_text(Sender);
end;

{--- assign captions and texts-------------------------------------------------}
procedure TF_Main.init_text(Sender: TObject);
begin
  {General}
//  F_Main.Caption                         :=  GetTxt( 1,  2, 'mp3toolbox version ???');
  TabSheet1.Caption                      :=  GetTxt( 1,  3, 'Laufwerks-archive');
  TabSheet2.Caption                      :=  GetTxt( 1,  4, 'CD-Archive');
  TabSheet3.Caption                      :=  GetTxt( 1,  5, 'CD-Liste');

  {MP3List}
  Multi_Dir_GroupBox.Caption             :=  GetTxt( 1,  6, 'Verzeichnisse ');
  Output_with_filesize_CB.Caption        :=  GetTxt( 1,  7, 'Ausgabe mit Dateigroesse');
  Output_with_path_CB.Caption            :=  GetTxt( 1,  8, 'Ausgabe mit Pfad');
  Subdir_CheckBox.Caption                :=  GetTxt( 1,  9, 'Unterverz. durchsuchen');
  Sel_Dir_Btn.Caption                    :=  GetTxt( 1, 10, 'Pfad auswaehlen');
  Own_Filter_CheckBox.Caption            :=  GetTxt( 1, 11, 'eigener Filter');
  TXT_Output_Btn.Caption                 :=  GetTxt( 1, 12, 'Textdatei erzeugen');
  HTML_OutputButton.Caption              :=  GetTxt( 1, 13, 'Webseite erzeugen');
  File1.Caption                          :=  GetTxt( 1, 14, 'Datei');
  Help1.Caption                          :=  GetTxt( 1, 15, 'Hilfe');
  Exit1.Caption                          :=  GetTxt( 1, 16, 'Beenden');


  {CD-Archive}
  Archive_GB.Caption                     :=  GetTxt( 1, 18, 'Archive : ');
  Choose_Archiv_Lab.Caption              :=  GetTxt( 1, 19, 'Archivauswahl : ');
  View_Archive_Btn.Caption               :=  GetTxt( 1, 20, 'gesamtes Archiv anzeigen');
  Add_A_Disk_GB.Caption                  :=  GetTxt( 1, 21, 'CD hinzufügen : ');
  Archive_Path_to_read_in_Lab.Caption    :=  GetTxt( 1, 22, 'Von wo soll gelesen werden : ');
  Save_Single_CD_Btn.Caption             :=  GetTxt( 1, 23, 'Speichern');
  CD_Archive_TXT_Output.Caption          :=  GetTxt( 1, 25, 'Textdatei erzeugen');
  CD_Archive_View_All_Files_Btn.Caption  :=  GetTxt( 1, 26, 'Alle Dateien im Archiv :');


  {CDList}
  CD_List_Open_File_Lab.Caption          :=  GetTxt( 1, 27, 'Welche Datei soll eingelesen werden :');
  HTML_OutputButton3.Caption             :=  GetTxt( 1, 29, 'Webseite erzeugen');
  CDList_Template_Label.Caption          :=  GetTxt( 1, 24, 'Vorlage :');
  Result_File_Label.Caption              :=  GetTxt( 1, 28, 'Ausgabedatei :');

end;

{           X   X    XXX    XXXX      X       X    XXXX    XXXXX               }
{           XX XX    X  X       X     X       X    X         X                 }
{           X X X    XXX    XXXX      X       X    XXXX      X                 }
{           X   X    X          X     X       X       X      X                 }
{           X   X    X      XXXX      XXXX    X    XXXX      X                 }

{--- MP3List : Formular schliessen --------------------------------------------}
procedure TF_Main.Close_Btn1Click(Sender: TObject);
begin
  Close;
end;

{--- MP3List : Menu - Formular schliessen -------------------------------------}
procedure TF_Main.Exit1Click(Sender: TObject);
begin
  Close;
end;

{--- MP3List : Select new path to search --------------------------------------}
procedure TF_Main.Sel_Dir_BtnClick(Sender: TObject);
var
  sOutDir : Widestring;
begin
	{Dialog für Verzeichnisauswahl starten}
  SelectDirectory('Oops', '/', sOutDir);
	if sOutDir	<>	'' then
  begin
    {Nur wenn Ordner ausgewählt wurde.}
	 	Multi_Dir_ListBox.Items.Add(sOutDir);
  end;
end;

{--- MP3List : Load values from inifile ---------------------------------------}
procedure TF_Main.Load_From_ButtonClick(Sender: TObject);
var
  i		:	Integer;
  s   : string;
begin
  Multi_Dir_ListBox.Clear;
  Ini := TIniFile.Create(ini_file_name);

  //	Verzeichnisse einlesen
  s :=  '';
  for	i :=	0	to 9 do
  begin
  	s :=  Ini.ReadString('VERZEICHNISSE', 'dir' + IntToStr(i), '');
   	if s <> '' then
	    Multi_Dir_ListBox.Items.Add(s);
  end;

	Ini.Free;
end;

{--- MP3List : Save values to inifile -----------------------------------------}
procedure TF_Main.Save_To_ButtonClick(Sender: TObject);
var
  i		:	Integer;
begin
  {save directory from Listbox}
  Ini := TIniFile.Create(ini_file_name);
  try
    {Items der Listbox den Variablen zuweisen}
//    for i:= 0  to (Multi_Dir_ListBox.Items.Count - 1) do
//      Ini.WriteString('VERZEICHNISSE', 'dir' + IntToStr(i), Multi_Dir_ListBox.Items[i]);
    for i:= 0  to 9 do
    begin
      if i < Multi_Dir_ListBox.Items.Count then
        Ini.WriteString('VERZEICHNISSE', 'dir' + IntToStr(i), Multi_Dir_ListBox.Items[i])
      else
        Ini.WriteString('VERZEICHNISSE', 'dir' + IntToStr(i), '')
    end;
  finally
    Ini.Free;
  end;
end;

{--- MP3List : Select all pathentries in listbox ------------------------------}
procedure TF_Main.Sel_All_ButtonClick(Sender: TObject);
var
	i	:	Integer;
begin
	if Multi_Dir_ListBox.Items.Count > 0 then
    for i	:= 0 to	(Multi_Dir_ListBox.Items.Count - 1) do
    	Multi_Dir_ListBox.Selected[i]	:=	True;

	{set Go-Button}
  if Multi_Dir_ListBox.SelCount > 0 then
	 	Go_Btn.Enabled	:=	True
  else
	 	Go_Btn.Enabled	:=	False;
end;

{--- MP3List : Select no pathentries in listbox -------------------------------}
procedure TF_Main.Sel_None_ButtonClick(Sender: TObject);
var
	i	:	Integer;
begin
	if Multi_Dir_ListBox.Items.Count > 0 then
  	for i	:= 0 to	(Multi_Dir_ListBox.Items.Count - 1) do
    	Multi_Dir_ListBox.Selected[i]	:=	False;

  Go_Btn.Enabled  :=  False;
end;

{--- MP3List : Remove selected pathentries in listbox -------------------------}
procedure TF_Main.Clear_Sel_ButtonClick(Sender: TObject);
var
	i	:	Integer;
begin
	for i	:=	(Multi_Dir_ListBox.Items.Count - 1) downto 0 do
  	if Multi_Dir_ListBox.Selected[i] then
			Multi_Dir_ListBox.Items.Delete(i);
end;

{--- MP3List : Remove all pathentries in listbox ------------------------------}
procedure TF_Main.Clear_All_ButtonClick(Sender: TObject);
begin
	Multi_Dir_ListBox.Clear;
	Go_Btn.Enabled  :=  False;			//	Erst wenn Pfad gewählt wurde.
end;

{--- MP3List : if own filter should be used -----------------------------------}
procedure TF_Main.Own_Filter_CheckBoxClick(Sender: TObject);
begin
	if Own_Filter_CheckBox.Checked	=	True then
  begin
    Own_Filter_CheckBox.Checked	:=	True;
    filter_ComboBox.Visible			:=	False;
    Filter_Edit.Visible					:=	True;
  end
  else
  begin
  	Own_Filter_CheckBox.Checked	:=	False;
    filter_ComboBox.Visible			:=	True;
    Filter_Edit.Visible					:=	False;
		{filter erneut zuweisen.}
    search_filter_expression		:=	filter_ComboBox.Items[filter_ComboBox.ItemIndex];
  end;
end;

{--- MP3List : if filter was choosed ------------------------------------------}
procedure TF_Main.filter_ComboBoxChange(Sender: TObject);
begin
	search_filter_expression	:=	filter_ComboBox.Items[filter_ComboBox.ItemIndex];
end;

{--- MP3List : on mouse up in pathentries listbox check selected --------------}
procedure TF_Main.Multi_Dir_ListBoxMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	{set Go-Button}
  if Multi_Dir_ListBox.SelCount > 0 then
	 	Go_Btn.Enabled	:=	True
  else
	 	Go_Btn.Enabled	:=	False;
end;


{--- MP3List : search selected pathes and fill listbox ------------------------}
procedure TF_Main.Go_BtnClick(Sender: TObject);
var
	Files							:	TStringList;                       //  Stringliste
	i									:	Integer;
  gauge_step				:	Integer;
begin
  MP3_ListBox.BringToFront;
  NameCheck_ListBox.Clear;

  {When Search is canceled.}
  if search_status  = True then
  begin
    cancel_search	:=	True;
  end;

  if search_status  = False then
  begin
    search_status :=  True;

    Go_Btn.Glyph.LoadFromResourceName(HInstance,'vcrstop');
    Go_Btn.Caption  :=  'stop search';
    Go_Btn.Caption  :=  'stop';

    {Startzeit der suche}
    start_search_time := Time;


    {Pacman aktivieren und starten}
    Pacman_Btn.Visible        :=  True;
    Pacman_Btn.Repaint;
    pacman_direction          :=  True;
    Pacman_Move_Timer.Enabled :=  True;


    {Liste löschen}
    MP3_ListBox.items.Clear;

    {Wenn eigener Filter angewaehlt wurde}
    if Own_Filter_CheckBox.Checked	=	True then
      search_filter_expression	:=	Filter_Edit.Text;

    searched_dir_count	:=	0;           // Verzeichniszähler
    gauge_step					:=	0;           // Zähler für Gauge-Fortschrittsanzeige

    {Stringliste initialisieren}
    Files							:=	TStringList.Create;

    {Schleife für Abarbeiten der Verzeichnisauswahl}
    for i := 0 to (Multi_Dir_ListBox.Items.Count - 1) do
    begin
      if Multi_Dir_ListBox.Selected[i] then
      begin
        gauge_step	:=	gauge_step + 1;
        {Aufruf der Suchprozedur}
        if cancel_search = True then Break;
        GetFiles( Multi_Dir_ListBox.Items[i],
        					Files,
                  output_with_pathes,
                  search_subdir,
                  output_with_filesize,
                  search_filter_expression );
        Search_ProgressBar.Position	:=	(100 div Multi_Dir_ListBox.SelCount) * gauge_step;
      end;
    end;


    {Pacman anhalten}
    Pacman_Move_Timer.Enabled :=  False;
    Pacman_Btn.Visible        :=  False;

    {fill progressbar up}
    Search_ProgressBar.Position :=	100;

    {Ende der Suchzeit}
    end_search_time           :=  Time;

    {Anzahl durchgesuchter Verzeichnisse anzeigen.}
    Dir_Count_Label.Color		  :=  clBlack;
    Dir_Count_Label.Caption	  :=	IntToStr(searched_dir_count) + ' Verzeichnisse durchsucht';;


    {Anzeige der Suchzeit.}
    Search_Time_Lab.Color			:=  clBlack;
    Search_Time_Lab.Caption		:=	TimeToStr(end_search_time - start_search_time) + ' Suchdauer';;

    {Stringliste sortieren}
    Files.Sort;

    {filter and fill ListBox}
    for i:= 0  to Files.Count - 1 do
    begin
      if Files[i] <> '%s.mp3' then
        MP3_ListBox.Items.Add(Files[i]);
    end;

    {total counter (wird für ausgabenschleife benötigt TXT und HTML}
    mp3list_result_count		  :=	MP3_ListBox.Items.Count;

    {Anzahl gefundener Treffer anzeigen.}
    Result_Label.Color			  :=  clBlack;
    Result_Label.Caption		  :=	IntToStr(MP3_ListBox.Items.Count) + ' Dateien gefunden';;

    {If result are present then allow output}
    if MP3_ListBox.Items.Count > 0 then
    begin
      TXT_Output_Btn.Enabled		:=	True;
      HTML_OutputButton.Enabled :=	True;
    end;

    {Speicher freigeben}
    Files.Free;

    {Button zurücksetzen}
    Go_Btn.Glyph.LoadFromResourceName(HInstance,'vcrplay');
    Go_Btn.Caption  :=  'Go !';

    cancel_search	:=	False;
    search_status :=  False;

    {clear progressbar}
    Search_ProgressBar.Position :=	0;
  end;
end;

{--- MP3List : When Checkbox "search subdir" is clicked -----------------------}
procedure TF_Main.Subdir_CheckBoxClick(Sender: TObject);
begin
	if Subdir_CheckBox.Checked = True then
  	search_subdir		:=	True
  else
  	search_subdir		:=	False;
end;

{--- MP3List : When Checkbox "Output with pathes" is clicked. -----------------}
procedure TF_Main.Output_with_path_CBClick(Sender: TObject);
begin
  if Output_with_path_CB.Checked then
    output_with_pathes  :=  True
  else
    output_with_pathes  :=  False;
end;

{--- MP3List : When Checkbox "Output with filesize" is clicked. ---------------}
procedure TF_Main.Output_with_filesize_CBClick(Sender: TObject);
begin
  if Output_with_filesize_CB.Checked then
    output_with_filesize  :=  True
  else
    output_with_filesize  :=  False;
end;

{--- MP3List : write mp3list as an textfile -----------------------------------}
procedure TF_Main.TXT_Output_BtnClick(Sender: TObject);
var
	F	:	TextFile;
  i	:	Integer;
begin
  Search_ProgressBar.Min     	:=	0;
  Search_ProgressBar.Position :=	0;
  Search_ProgressBar.Max      :=  MP3_ListBox.Items.Count;
	AssignFile(F, SlashSep(text_files_output_path, mp3list_text_output_file));
  Rewrite(F);
  {Schleife für ListBox-Ausgabe}
  for i := 0 to (MP3_ListBox.Items.Count - 1) do
  begin
	 	writeln(F,(MP3_ListBox.Items[i]));
    F_Main.Search_ProgressBar.Position	:=	i;
  end;
  CloseFile(F);
  F_Main.Search_ProgressBar.Position	:=	0;

  if mp3list_text_files_zip then
  begin
    {zip files}
    { syntax : zip name_of_zip_file file1_to_zip file2_to_zip file3_to_zip}
    Libc.system(PChar('zip -j' +
                      ' ' +
                      SlashSep(text_files_output_path, mp3list_text_output_file) +
                      '.zip' +
                      ' ' +
                      SlashSep(text_files_output_path, mp3list_text_output_file)));
    if mp3list_text_files_delete_after_zip then
    begin
      if not DeleteFile(SlashSep(text_files_output_path, mp3list_text_output_file)) then
        ShowMessage('???');
    end;
  end;

end;

{--- MP3List : write mp3list as an website ------------------------------------}
procedure TF_Main.HTML_OutputButtonClick(Sender: TObject);
var
	i		          :	Integer;
	i2	          :	Integer;
  dir	          :	array[0..26]	of Char;	//  array fuer die Buchstaben
  first_letter  : String;
  files_to_zip  : String;
  letter_found  : Boolean;
begin
	{Wenn eine gesamte Seite erzeugt werden soll.}
	if mp3list_html_multi_output = 0 then
  begin
		create_html_output(mp3list_single_template_file,
    									 SlashSep(html_files_output_path, mp3list_html_output_file),
                       '',
                       0);

    {zip files}
    if mp3list_html_files_zip then
    begin
      {zip files}
      { syntax : zip name_of_zip_file file1_to_zip file1_to_zip file1_to_zip}
      Libc.system(PChar('zip -j' +
                        ' ' +
                        SlashSep(html_files_output_path, mp3list_html_output_file) +
                        '.zip' +
                        ' ' +
                        SlashSep(html_files_output_path, mp3list_html_output_file)));
      if mp3list_html_files_delete_after_zip then
      begin
        if not DeleteFile(SlashSep(html_files_output_path, mp3list_html_output_file)) then
          ShowMessage(GetTxt(1, 17, 'Kann Datei nicht löschen') + SlashSep(html_files_output_path, mp3list_html_output_file));
      end;
    end;
  end;

 	{Wenn eine Seite fuer jeden Buchstaben erzeugt werden soll.}
	if mp3list_html_multi_output = 1 then
  begin

    dir :=	'ABCDEFGHIJKLMNOPQRSTUVWXYZ0';

    {clear stringlists first}
    for i := 0 to Length(mp3list_Character_stringlists) - 1 do
      mp3list_Character_stringlists[i].Clear;

    {sort every single line to it's assignes character stringlist}
    for i := 0 to MP3_ListBox.Items.Count - 1 do
    begin
      letter_found  :=  False;
      first_letter  :=  MP3_ListBox.Items[i][1];

      {compare for all letter except numbers}
      for i2 := 0 to Length(dir) - 2 do
      begin
        {	1 means the string start with searched letter}
        if AnsiPos(Lowercase(first_letter), lowercase(dir[i2])) = 1 then
        begin
          letter_found  :=  True;
          break;
        end;
      end;

      {add to letter stringlist or number stringlist}
      if letter_found then
        mp3list_Character_stringlists[i2].Add(MP3_ListBox.Items[i])
      else
        mp3list_Character_stringlists[26].Add(MP3_ListBox.Items[i])
    end;

    Search_ProgressBar.Min     	:=	0;
    Search_ProgressBar.Position :=	0;
    Search_ProgressBar.Max      :=  Length(dir) - 1;


    {Eine Seite pro Buchstabe}
    for i := 0 to Length(dir) - 1 do
	  begin
      {Body}
			create_html_output(mp3list_multi_template_file,
  	  									 SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending)),
                         dir[i],
                         i);

      Search_ProgressBar.Position :=	i;
	  end;

    Search_ProgressBar.Position     	:=	0;

    {zip files}
    if mp3list_html_files_zip then
    begin
      files_to_zip  :=  '';
      for i := 0 to Length(dir) - 1 do
      begin
        if FileExists(SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending))) then
          files_to_zip  :=  files_to_zip + SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending)) + ' ';
        Search_ProgressBar.Position :=	i;
      end;
      {zip files}
      { syntax : zip name_of_zip_file file1_to_zip file1_to_zip file1_to_zip}
      Libc.system(PChar('zip -j' +
                        ' ' +
                        SlashSep(html_files_output_path, mp3list_html_output_file) +
                        '.zip' +
                        ' ' +
                        files_to_zip));
      for i := 0 to Length(dir) - 1 do
      begin
        if mp3list_html_files_delete_after_zip then
        begin
          if not DeleteFile(SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending))) then
            ShowMessage(GetTxt(1, 17, 'Kann Datei nicht löschen') + SlashSep(html_files_output_path, mp3list_html_output_file));
        end;
      end;
    end;

    Search_ProgressBar.Position     	:=	0;

  end;
end;


{--- MP3List : PopUp - Check filenames for anallowed characters ---------------}
procedure TF_Main.checkfilenames1Click(Sender: TObject);
var
	i	:	Integer;
begin
  NameCheck_ListBox.Clear;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if check_filename(MP3_ListBox.Items[i]) then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
	  NameCheck_ListBox.BringToFront
  else
	  MP3_ListBox.BringToFront;

end;

{--- MP3List : PopUp - Set visible properties ---------------------------------}
procedure TF_Main.MP3List_PopupMenuPopup(Sender: TObject);
begin
	if MP3_ListBox.Items.Count > 0 then
  begin
	  checkfilenames1.Enabled									:=	True;
    checkfilenamesforallowedlength1.Enabled	:=	True;
  end
  else
  begin
	  checkfilenames1.Enabled									:=	False;
	  checkfilenamesforallowedlength1.Enabled	:=	False;
  end;
end;

{--- MP3List : PopUp - Check filenames for length JOLIET ----------------------}
procedure TF_Main.Joliet601Click(Sender: TObject);
var
	i	:	Integer;
begin
  NameCheck_ListBox.Clear;
  
	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if check_filename_for_length(MP3_ListBox.Items[i], 64) then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
	  NameCheck_ListBox.BringToFront
  else
	  MP3_ListBox.BringToFront;

end;

{--- MP3List : PopUp - Check filenames for length ISO 9660 1 ------------------}
procedure TF_Main.ISO9660Level1121Click(Sender: TObject);
var
	i	:	Integer;
begin
  NameCheck_ListBox.Clear;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if check_filename_for_length(MP3_ListBox.Items[i], 12) then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
	  NameCheck_ListBox.BringToFront
  else
	  MP3_ListBox.BringToFront;

end;

{--- MP3List : PopUp - Check filenames for length ISO 9660 2 ------------------}
procedure TF_Main.ISO9660Level2311Click(Sender: TObject);
var
	i	:	Integer;
begin
  NameCheck_ListBox.Clear;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if check_filename_for_length(MP3_ListBox.Items[i], 31) then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
	  NameCheck_ListBox.BringToFront
  else
	  MP3_ListBox.BringToFront;

end;

{--- MP3List : PopUp - Check filenames for length ROMEO -----------------------}
procedure TF_Main.Romeo1281Click(Sender: TObject);
var
	i	:	Integer;
begin
  NameCheck_ListBox.Clear;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if check_filename_for_length(MP3_ListBox.Items[i], 128) then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
	  NameCheck_ListBox.BringToFront
  else
	  MP3_ListBox.BringToFront;
end;

{--- MP3List : Bring MP3List to front if clicked ------------------------------}
procedure TF_Main.MP3_ListBoxClick(Sender: TObject);
begin
  MP3_ListBox.BringToFront;
end;

{--- MP3List : start moving the PACMAN ----------------------------------------}
procedure TF_Main.Start_Pacman_BtnClick(Sender: TObject);
begin
  {Pacman aktivieren und starten}
  Pacman_Btn.Visible        :=  True;
  Pacman_Move_Timer.Enabled :=  True;
  pacman_direction          :=  True;
  Pacman_Speed_Edit.Text    :=  IntToStr(Pacman_Move_Timer.Interval);
end;

{--- MP3List : Close PACMAN setuppanel ----------------------------------------}
procedure TF_Main.Close_Pacman_BtnClick(Sender: TObject);
begin
  {Pacman deaktivieren und ausblenden}
  Pacman_Btn.Visible        :=  False;
  Pacman_Move_Timer.Enabled :=  False;
	Pacman_Panel.Visible			:=	False;

  {Pfade speichern}
  Ini := TIniFile.Create(ini_file_name);
  Ini.WriteInteger ('GENERAL',  'pacmanspeed' , Pacman_Move_Timer.Interval);
  Ini.Free;
end;

{--- MP3List : Set EDIT value to timerinterval --------------------------------}
procedure TF_Main.Pacman_Speed_EditChange(Sender: TObject);
begin
  Pacman_Move_Timer.Interval  :=  StrToInt(Pacman_Speed_Edit.Text);
end;


{--- MP3List : timner to start moving the PACMAN ------------------------------}
procedure TF_Main.Pacman_Move_TimerTimer(Sender: TObject);
begin
  if pacman_direction = True then
  begin
    Pacman_Btn.Glyph.LoadFromResourceName(HInstance,'eater-r');
    if Pacman_Btn.Left > TabSheet1.ClientWidth - 45 then
      pacman_direction  :=  False;
    Pacman_Btn.Left :=  Pacman_Btn.Left + 8 ;
    Pacman_Btn.Repaint;
  end
  else
  begin
    Pacman_Btn.Glyph.LoadFromResourceName(HInstance,'eater-l');
    if Pacman_Btn.Left < 466 then      pacman_direction  :=  True;
    Pacman_Btn.Left :=  Pacman_Btn.Left - 8 ;
    Pacman_Btn.Repaint;
  end;
end;


{               XXXX    XXX     X       X    XXXX    XXXXX                     }
{               X       X  X    X       X    X         X                       }
{               X       X  X    X       X    XXXX      X                       }
{               X       X  X    X       X       X      X                       }
{               XXXX    XXX     XXXX    X    XXXX      X                       }

{--- CDList : Show Tabshhet ---------------------------------------------------}
procedure TF_Main.TabSheet3Show(Sender: TObject);
var
	i	:	Integer;
begin
  {Combobox neu füllen}
  CDList_Source_File_CB.Clear;
  for i := 0 to 9 do
  begin
    if FileExists(cdlist_last_used_pathes[i]) then
    begin
      CDList_Source_File_CB.Items.Add(cdlist_last_used_pathes[i]);
	    Go_Btn3.Enabled :=  True;
    end;
  end;
  CDList_Source_File_CB.ItemIndex	:=	0;

  Result_File_ComboBox.Clear;
  for i := 0 to 9 do
    Result_File_ComboBox.Items.Add(cdlist_last_used_export_files[i]);
  Result_File_ComboBox.ItemIndex	:=	0;

  CDList_Template_ComboBox.Clear;
  for i := 0 to 9 do
  begin
    if FileExists(cdlist_last_used_template_files[i]) then
      CDList_Template_ComboBox.Items.Add(cdlist_last_used_template_files[i]);
  end;
  CDList_Template_ComboBox.ItemIndex	:=	0;

end;

{--- CDList : Start to read in the textfile -----------------------------------}
procedure TF_Main.Go_Btn3Click(Sender: TObject);
var
  F         : TextFile;
  ln        : String;
  i         : Integer;
begin
  {Gesamtzähler}
  cdlist_result_count :=  0;

  {Begin of search}
  start_search_time :=  Time;

  { - Begin : Get number of tabs and adjust StringGrid - }
  AssignFile(F, CDList_Source_File_CB.Items[CDList_Source_File_CB.ItemIndex]);
  Reset(F);
  Readln(F, ln);

  CDListe_StringGrid.ColCount :=  separate_string_to_get_tabcount(ln);

  F_Main.FormResize(Go_Btn3);

  CloseFile(F);
  { - End : Get number of tabs and adjust StringGrid - }

  { - Begin : Fill lines - }
  AssignFile(F, CDList_Source_File_CB.Items[CDList_Source_File_CB.ItemIndex]);
  Reset(F);

  {zeilenweise lesen und zuweisen}
  While not Eof(F) do
  begin
    Readln(F, ln);
    separate_string_by_tab(ln);

    for i := 0 to CDListe_StringGrid.ColCount - 1 do
    begin
      CDListe_StringGrid.Cells[i,cdlist_result_count]  :=  cdlist_tab_values[i];
      cdlist_tab_values[i]  :=  '';
    end;

    {counter}
    cdlist_result_count :=  cdlist_result_count + 1;

  end;
  CloseFile(F);
  { - End : Fill lines - }

  {Anzahl der Zeilen anpassen}
  CDListe_StringGrid.RowCount :=  cdlist_result_count;

  {Result minus headrow}
  if cdlist_result_count > 0 then
    cdlist_result_count :=  cdlist_result_count - 1;

  {Anzahl gefundener Treffer anzeigen.}
  CDList_Result_Label.Color			  :=  clBlack;
  CDList_Result_Label.Caption		  :=	IntToStr(cdlist_result_count) + ' Titel gefunden ';

  {Ende der Suche}
  end_search_time :=  Time;

  {Buttons einstellen}
  if cdlist_result_count > 0 then
    HTML_OutputButton3.Enabled  :=  True;
end;

{--- CDList : When Go3-Btn is clicked (Mouse down) ----------------------------}
procedure TF_Main.Go_Btn3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CDList_ProgressBar.Position   :=  0;
	CDList_Result_Label.Color			:=	clBtnFace;
	CDList_Result_Label.Caption		:=	'...';
end;

{--- CDList : Choose textfile with cds ----------------------------------------}
procedure TF_Main.Choose_CDList_Source_File_BtnClick(Sender: TObject);
var
	i	:	Integer;
begin
	if DirectoryExists('C:\') then
  	CDList_Source_File_OpenDialog.InitialDir	:=	'c:\';

  if CDList_Source_File_OpenDialog.Execute = True then
  begin
    if FileExists(CDList_Source_File_OpenDialog.FileName) then
    begin
      Go_Btn3.Enabled :=  True;
			{neuen Pfad merken und einordnen}
      move_memory_combos(cdlist_last_used_pathes, CDList_Source_File_OpenDialog.FileName);

      {Pfade speichern}
      Ini := TIniFile.Create(ini_file_name);

		  for i := 0 to 9 do
		  	Ini.WriteString ('CDLIST',  'SourcePath' + IntToStr(i), cdlist_last_used_pathes[i]);

      Ini.Free;

      {Combobox neu füllen}
      CDList_Source_File_CB.Clear;
      for i := 0 to 9 do
      begin
        if FileExists(cdlist_last_used_pathes[i]) then
          CDList_Source_File_CB.Items.Add(cdlist_last_used_pathes[i]);
      end;
      CDList_Source_File_CB.ItemIndex	:=	0;
    end
  end
  else
  begin
    CDList_Source_File_CB.Text  	:=  '';
  end;
end;


{--- CDList : Close Form ------------------------------------------------------}
procedure TF_Main.CDList_Close_BtnClick(Sender: TObject);
begin
	Close;
end;

{--- CDList : create website --------------------------------------------------}
procedure TF_Main.HTML_OutputButton3Click(Sender: TObject);
begin
	{Progressbar maximum einstellen}
  CDList_ProgressBar.Max  :=  cdlist_result_count;

	{Seite erstellen}
//  create_html_output(cdlist_template_file_dir_and_name,
  create_html_output(CDList_Template_ComboBox.Items[CDList_Template_ComboBox.ItemIndex],
//  									 SlashSep(html_files_output_path, cdlist_html_output_file),
  									 Result_File_ComboBox.Items[Result_File_ComboBox.ItemIndex],
                     '',
                     0);

  if cdlist_html_files_zip then
  begin

    Libc.system(PChar('zip -j' +
                      ' ' +
    								  Result_File_ComboBox.Items[Result_File_ComboBox.ItemIndex] +
                      '.zip' +
                      ' ' +
  									  Result_File_ComboBox.Items[Result_File_ComboBox.ItemIndex]))
                      ;

    if cdlist_html_files_delete_after_zip then
    begin
      if not DeleteFile(SlashSep(html_files_output_path, mp3list_html_output_file)) then
        ShowMessage(GetTxt(1, 17, 'Kann Datei nicht löschen') + SlashSep(html_files_output_path, mp3list_html_output_file));
    end;
  end;

	{clear progressbar}
  CDList_ProgressBar.Position  :=  0;
end;

{--- CDList : PopUp - Edit selected file --------------------------------------}
procedure TF_Main.Dateibearbeiten1Click(Sender: TObject);
begin
(*
  Start_External_Program(Form1.Handle,
                         '',
                         PChar('file://' + CDList_Source_File_CB.Items[CDList_Source_File_CB.ItemIndex]),
                         '',
                         '',
                         SW_SHOWMAXIMIZED)
*)
end;

{--- CDList : PopUp - Delete file from reminded list --------------------------}
procedure TF_Main.DateiausListeentfernen1Click(Sender: TObject);
var
	i	:	Integer;
begin
	{check for filename in array and overwrite it with nothing}
	for i := 0 to Length(cdlist_last_used_pathes) - 1 do
  begin
    if cdlist_last_used_pathes[i] = CDList_Source_File_CB.Items[CDList_Source_File_CB.ItemIndex] then
    begin
    	cdlist_last_used_pathes[i]	:=	'';

      break; {<--}
    end;
  end;

  {save pathes to ini}
  Ini := TIniFile.Create( ini_file_name);

  for i := 0 to 9 do
    Ini.WriteString ('CDLIST',  'SourcePath' + IntToStr(i), cdlist_last_used_pathes[i]);

  Ini.Free;

  {Refill listbox}
  TabSheet3Show(DateiausListeentfernen1);
end;


procedure TF_Main.MP3_ListBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if  MP3_ListBox.ItemIndex >= 0 then
    Char_Count_Lab.Caption  :=  IntToStr(Length(MP3_ListBox.Items[MP3_ListBox.ItemIndex]));
end;



{        XXXXX   XXXX    XXX   X   X   XXX  X   X  XXXXX                       }
{        X   X   X   X  X   X  X   X    X   X   X  X                           }
{        XXXXX   XXXX   X      XXXXX    X   X   X  XXXX                        }
{        X   X   X X    X   X  X   X    X    X X   X                           }
{        X   X   X  XX   XXX   X   X   XXX    X    XXXXX                       }

procedure TF_Main.CD_Archive_Close_BtnClick(Sender: TObject);
begin
	Close;
end;

procedure TF_Main.Choose_Search_PathClick(Sender: TObject);
var
  sOutDir : WideString;
begin
	{Dialog für Verzeichnisauswahl starten}
  if SelectDirectory('???', '/', sOutDir) then
  begin
    {Nur wenn Ordner ausgewählt wurde.}
    cdarchive_path_to_read_in		  :=  sOutDir;
    Search_Path_Edit.Text         :=  cdarchive_path_to_read_in;

    Ini := TIniFile.Create(ini_file_name);
    Ini.WriteString ('CDARCHIV',  'SINGLEDISKPATH', cdarchive_path_to_read_in);
    Ini.Free;

    GO_Btn2.Enabled       :=  True
  end;
end;

procedure TF_Main.View_Archive_BtnClick(Sender: TObject);
var
	F	                :	TextFile;
  i                 : Integer;
	CD_Archive_Files	:	TStringList;                       //  Stringliste
  ln                : String;
begin
	{Stringliste initialisieren}
  CD_Archive_Files							:=	TStringList.Create;
  {Listbox leeren}
  CD_Archive_ListBox.Clear;

  {Jede Datei öffnen}
  for i :=  0 to FileListView1.Items.Count - 1 do
  begin
    if ( FileListView1.Items.Item[i].Caption <> '.'  ) and
       ( FileListView1.Items.Item[i].Caption <> '..' ) then
    begin
  	  AssignFile(F, SlashSep(FileListView1.Directory.Location, FileListView1.Items.Item[i].Caption));
      Reset	(F);
      {zeilenweise lesen und zuweisen}
      While not Eof(F) do
      begin
  	  	Readln(F, ln);
        CD_Archive_Files.Add(ln);
      end;
  	  CloseFile(F);
    end;
  end;

  {StringList sortieren}
  CD_Archive_Files.Sort;
 	{ListBox füllen}
  CD_Archive_ListBox.Items.AddStrings(CD_Archive_Files);

  CD_Archive_Files.Free;
end;

procedure TF_Main.Choose_New_Archive_BtnClick(Sender: TObject);
var
  sOutDir : WideString;
  i			 	:	Integer;
begin
	{Dialog für Verzeichnisauswahl starten}
  SelectDirectory('???', '/', sOutDir);
	if ( sOutDir	<>	'' ) and (DirectoryExists(sOutDir)) then
  begin
    {neuen Pfad merken und einordnen}
    move_memory_combos(cdarchive_last_used_pathes, sOutDir);

    {Pfade speichern}
    Ini := TIniFile.Create(ini_file_name);
    for i := 0 to 9 do
      Ini.WriteString ('CDARCHIV',  'SourcePath' + IntToStr(i), cdarchive_last_used_pathes[i]);
    Ini.Free;

    {Combobox neu füllen}
    New_Archive_Edit_CB.Clear;
    for i := 0 to 9 do
    begin
      if DirectoryExists(cdarchive_last_used_pathes[i]) then
      begin
        New_Archive_Edit_CB.Items.Add(cdarchive_last_used_pathes[i]);
      end;
    end;
    New_Archive_Edit_CB.ItemIndex	:=	0;

    {Nur wenn Ordner ausgewählt wurde.}
    FileListView1.Directory.Location    :=  sOutDir;
    FileListView1.Update;
    View_Archive_Btn.Enabled  :=  True;
  end;
end;

procedure TF_Main.TabSheet2Show(Sender: TObject);
var
  i	:	Integer;
begin
  if DirectoryExists(cdarchive_path_to_read_in) then
  begin
    Search_Path_Edit.Text           :=  cdarchive_path_to_read_in;
	  GO_Btn2.Enabled                 :=  True;
  end;

  {Combobox neu füllen}
  New_Archive_Edit_CB.Clear;
  for i := 0 to 9 do
  begin
    if DirectoryExists(cdarchive_last_used_pathes[i]) then
    begin
      New_Archive_Edit_CB.Items.Add(cdarchive_last_used_pathes[i]);
			View_Archive_Btn.Enabled	:=	True;
      FileListView1.Directory.Location    :=  cdarchive_path_to_act_archive;
    end;
  end;
  New_Archive_Edit_CB.ItemIndex	:=	0;
end;

procedure TF_Main.FileListView1Click(Sender: TObject);
var
	F	  :	TextFile;
  i   : Integer;
  ln  : String;
begin
 	{ListBox leeren}
  CD_Archive_ListBox.Clear;
  for i :=  0 to  FileListView1.Items.Count -1 do
  begin
    {Wenn Eintrag markiert}
    if FileListView1.Items[i].Selected = True  then
    begin
  	  AssignFile(F, SlashSep(FileListView1.Directory.Location, FileListView1.Items.Item[i].Caption));
      Reset	(F);
      {Zeile für Zeile einlesen}
      While not Eof(F) do
      begin
        Readln(F, ln);
        CD_Archive_ListBox.Items.Add(ln);
      end;
    CloseFile(F);
    end;
  end;
end;

procedure TF_Main.GO_Btn2Click(Sender: TObject);
var
	CD_Single_Files							:	TStringList;
begin
	{Stringliste initialisieren}
  CD_Single_Files							:=	TStringList.Create;

  {Listbox leeren}
  CD_Archive_ListBox.Clear;

  {!!!!!!!!!!!!!!!!!!!!!!!!!!!! Filter}
	GetFiles( cdarchive_path_to_read_in,
  					CD_Single_Files,
            False,
            True,
            False,
            '*.*');

  CD_Single_Files.Sort;																	//	Stringliste sortieren
 	CD_Archive_ListBox.Items.AddStrings(CD_Single_Files);	//	ListBox füllen
  if CD_Archive_ListBox.Items.Count > 0 then
    Save_Single_CD_Btn.Enabled  :=  True;

  {Speicher freigeben}
  CD_Single_Files.Free;
end;

procedure TF_Main.Save_Single_CD_BtnClick(Sender: TObject);
var
	F	        :	TextFile;
  i         : Integer;
  diskname  : String;
begin
  CD_Single_SaveDialog.InitialDir :=  New_Archive_Edit_CB.Items[New_Archive_Edit_CB.ItemIndex];
  if CD_Single_SaveDialog.Execute then
  begin
	  AssignFile(F, CD_Single_SaveDialog.FileName);
    Rewrite	(F);
    {CD-Namen ermitteln}
    diskname  :=  clear_all_until_last_slash(CD_Single_SaveDialog.FileName);
    diskname  :=  StringReplace(diskname, '.txt', '', [rfReplaceAll]);
    {Jede Zeile mit CD.Kennung speichern}
    for i := 0 to (CD_Archive_ListBox.Items.Count - 1) do
  		writeln(F, CD_Archive_ListBox.Items[i] + '     (' + diskname + ')');

  	CloseFile(F);
  end;
  FileListView1.Refresh;
end;

procedure TF_Main.checkfilenamesfornoof1Click(Sender: TObject);
var
	i	:	Integer;
begin
  NameCheck_ListBox.Clear;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if get_no_of_chars(MP3_ListBox.Items[i], '-') > 3 then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
	  NameCheck_ListBox.BringToFront
  else
	  MP3_ListBox.BringToFront;
end;

procedure TF_Main.AboutMP3Toolbox1Click(Sender: TObject);
begin
  About_F.Show;
end;

procedure TF_Main.NameCheck_ListBoxMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if  NameCheck_ListBox.ItemIndex >= 0 then
    Char_Count_Lab.Caption  :=  IntToStr(Length(NameCheck_ListBox.Items[NameCheck_ListBox.ItemIndex]));
end;

procedure TF_Main.CDList_Template_SpeedButtonClick(Sender: TObject);
var
	i	:	Integer;
begin
	if DirectoryExists('C:\') then
  	Template_OpenDialog.InitialDir	:=	'c:\';

  if Template_OpenDialog.Execute = True then
  begin
    if FileExists(Template_OpenDialog.FileName) then
    begin
//      Go_Btn3.Enabled :=  True;
			{neuen Pfad merken und einordnen}
      move_memory_combos(cdlist_last_used_template_files, Template_OpenDialog.FileName);

      {Pfade speichern}
      Ini := TIniFile.Create(ini_file_name);

		  for i := 0 to 9 do
		  	Ini.WriteString ('CDLIST',  'template_files' + IntToStr(i), cdlist_last_used_template_files[i]);

      Ini.Free;

      {Combobox neu füllen}
      CDList_Template_ComboBox.Clear;
      for i := 0 to 9 do
      begin
        if FileExists(cdlist_last_used_template_files[i]) then
          CDList_Template_ComboBox.Items.Add(cdlist_last_used_template_files[i]);
      end;
      CDList_Template_ComboBox.ItemIndex	:=	0;
    end
  end
  else
    CDList_Template_ComboBox.Text  	:=  '';
end;

procedure TF_Main.Result_File_SpeedButtonClick(Sender: TObject);
var
	i	:	Integer;
begin
	if DirectoryExists('C:\') then
  	Result_File_SaveDialog.InitialDir	:=	'c:\';

  if Result_File_SaveDialog.Execute = True then
  begin
    {neuen Pfad merken und einordnen}
    move_memory_combos(cdlist_last_used_export_files, Result_File_SaveDialog.FileName);

    {Pfade speichern}
    Ini := TIniFile.Create(ini_file_name);

    for i := 0 to 9 do
      Ini.WriteString ('CDLIST',  'export_files' + IntToStr(i), cdlist_last_used_export_files[i]);

    Ini.Free;

    {Combobox neu füllen}
    Result_File_ComboBox.Clear;
    for i := 0 to 9 do
      Result_File_ComboBox.Items.Add(cdlist_last_used_export_files[i]);

    Result_File_ComboBox.ItemIndex	:=	0;
  end
  else
    Result_File_ComboBox.Text  	:=  '';
end;

end.
