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

unit U_Main;

interface

uses
	Windows, SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
	Dialogs, StdCtrls, Buttons, ComCtrls, Menus, IniFiles, ExtCtrls,
	Grids, Mp3FileUtils, fldbrowsUnicode, xmldom, XMLIntf, msxmldom, XMLDoc,
	IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
	IdExplicitTLSClientServerBase,
	IdFTP,
	U_FTP,
	U_Update,
	CheckLst,
	System.UITypes;

type
	TF_Main = class(TForm)
		PageControl1: TPageControl;
		FolderScanTS: TTabSheet;
		FolderScanMultiDirGroupBox: TGroupBox;
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
		FolderScanTxtOutputBtn: TBitBtn;
		FolderScanHtmlOutputBtn: TBitBtn;
		FolderScanGoBtn: TBitBtn;
		FolderScanListSearchTimeLab2: TLabel;
		FolderScanListDirCntLab2: TLabel;
		FolderScanListResultLab2: TLabel;
		FolderScanPacmanBtn: TSpeedButton;
		FolderScanSearchProgressBar: TProgressBar;
		MainMenu1: TMainMenu;
		File1: TMenuItem;
		Help1: TMenuItem;
		Setup1: TMenuItem;
		Exit1: TMenuItem;
		FolderScanPacmanPanel: TPanel;
		FolderScanPacmanSpeedEdit: TEdit;
		FolderScanPacmanStartBtn: TButton;
		FolderScanPacmanCloseBtn: TBitBtn;
		FolderScanPopupMenu: TPopupMenu;
		checkfilenames1: TMenuItem;
		checkfilenamesforallowedlength1: TMenuItem;
		Joliet601: TMenuItem;
		ISO9660Level1121: TMenuItem;
		ISO9660Level2311: TMenuItem;
		Romeo1281: TMenuItem;
		Pacman_Move_Timer: TTimer;
		Char_Count_Lab: TLabel;
		Char_Count_Lab2: TLabel;
		SaveDialog_File: TSaveDialog;
		checkfilenamesfornoof1: TMenuItem;
		AboutMP3Toolbox1: TMenuItem;
		Template_OpenDialog: TOpenDialog;
		Result_File_SaveDialog: TSaveDialog;
		OpenDialog_FileSelect: TOpenDialog;
		ErrorTS: TTabSheet;
		ListBox_Error: TListBox;
		FolderScanListResultLab1: TLabel;
		FolderScanListDirCntLab1: TLabel;
		FolderScanListSearchTimeLab1: TLabel;
		FolderScanScanResult1: TLabel;
		FolderScanScanTimeLab1: TLabel;
		FolderScanScanResult2: TLabel;
		FolderScanScanTimeLab2: TLabel;
		Goo1: TMenuItem;
		WebsiteofAuthor1: TMenuItem;
		ITunesImportTS: TTabSheet;
		XMLDocumentiTunesImport: TXMLDocument;
		ITunesImportXmlFileLab: TLabel;
		ITunesImportGoBtn: TBitBtn;
		ITunesImportHtmlOutputBtn: TBitBtn;
		ITunesImportScanTime1: TLabel;
		ITunesImportFoundCntLab2: TLabel;
		ITunesImportScanTime2: TLabel;
		ITunesImportXmlFileCB: TComboBox;
		ITunesImportXmlFileSelectBtn: TSpeedButton;
		Speichernunter1: TMenuItem;
		ITunesImportFoundCntLab1: TLabel;
		FtpUpload: TIdFTP;
		Extra1: TMenuItem;
		UploadtoFTP1: TMenuItem;
		GenreTS: TTabSheet;
		Genre_CheckListBox: TCheckListBox;
		Showfoundgenres1: TMenuItem;
		GenreLab: TLabel;
		ITunesImportHyperlinkLab: TLabel;
		CheckforUpdate1: TMenuItem;
		XMLDocumentUpdate: TXMLDocument;
		StatusBar: TStatusBar;
		MainSelectionPanel1: TPanel;
		PageControl2: TPageControl;
		LogTS: TTabSheet;
		LogListBox: TListBox;
		SearchResultTS: TTabSheet;
		MP3_ListBox: TListBox;
		NameCheckTS: TTabSheet;
		NameCheck_ListBox: TListBox;
		MainSelectionPanel2: TPanel;
		MainSelectionBtn1: TButton;
		MainSelectionBtn2: TButton;
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
		procedure FolderScanGoBtnClick(Sender: TObject);
		procedure Subdir_CheckBoxClick(Sender: TObject);
		procedure Output_with_path_CBClick(Sender: TObject);
		procedure Output_with_filesize_CBClick(Sender: TObject);
		procedure FolderScanTxtOutputBtnClick(Sender: TObject);
		procedure Setup1Click(Sender: TObject);
		procedure FolderScanHtmlOutputBtnClick(Sender: TObject);
		procedure checkfilenames1Click(Sender: TObject);
		procedure Joliet601Click(Sender: TObject);
		procedure ISO9660Level1121Click(Sender: TObject);
		procedure ISO9660Level2311Click(Sender: TObject);
		procedure Romeo1281Click(Sender: TObject);
		procedure FolderScanPopupMenuPopup(Sender: TObject);
		procedure MP3_ListBoxClick(Sender: TObject);
		procedure FolderScanPacmanStartBtnClick(Sender: TObject);
		procedure FolderScanPacmanCloseBtnClick(Sender: TObject);
		procedure FolderScanPacmanSpeedEditChange(Sender: TObject);
		procedure Pacman_Move_TimerTimer(Sender: TObject);
		procedure FormResize(Sender: TObject);
		procedure init_text(Sender:TObject);
		procedure FormShow(Sender: TObject);
		procedure FormActivate(Sender: TObject);
		procedure MP3_ListBoxMouseUp(Sender: TObject; Button: TMouseButton;
			Shift: TShiftState; X, Y: Integer);
		procedure CD_Archive_Close_BtnClick(Sender: TObject);
		procedure checkfilenamesfornoof1Click(Sender: TObject);
		procedure AboutMP3Toolbox1Click(Sender: TObject);
		procedure NameCheck_ListBoxMouseUp(Sender: TObject;
			Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
		procedure Goo1Click(Sender: TObject);
		procedure WebsiteofAuthor1Click(Sender: TObject);
		procedure ITunesImportGoBtnClick(Sender: TObject);
		function SearchAndReplace(s : String): string;
		function ReplaceVariablesInResult(AString,
																			AArtist,
																			AAlbum,
																			ATrack,
																			ATitle,
																			AGenre,
																			AYear,
																			ADiscNo,
																			ADiscCnt  : String) : String;
		procedure ITunesImportXmlFileSelectBtnClick(Sender: TObject);
		procedure Speichernunter1Click(Sender: TObject);
		function UploadToFtp : Boolean;
		function FtpTestConnection (var error : String) : Boolean;
		procedure DeleteFilesAfterFtpUpload;
		procedure FolderScanListResultLab1Click(Sender: TObject);
		procedure UploadtoFTP1Click(Sender: TObject);
		procedure Showfoundgenres1Click(Sender: TObject);
		procedure ITunesImportHyperlinkLabClick(Sender: TObject);
		procedure CheckForUpdates(AQuiet	:	Boolean);
		procedure CheckforUpdate1Click(Sender: TObject);
		procedure StatusBarClick(Sender: TObject);
		procedure AddLogMessage(AMessage : String);
		procedure ITunesImportXmlFileCBChange(Sender: TObject);
		procedure MainSelectionBtn1Click(Sender: TObject);
		procedure MainSelectionBtn2Click(Sender: TObject);
		procedure PageControl2Change(Sender: TObject);

	private
		cnt: Integer;
		{ Private-Deklarationen }
	public
		{ Public-Deklarationen }

		ID3v2Tag: TID3v2Tag;

		FirstStart	:	Boolean;
		AppDataPath	:	String;
		version			:	String;

	end;

var
	F_Main: TF_Main;
	act_exec_directory                  : String;             //  aktuelles Verzeichnis
	searched_dir_count									:	Integer;						//	anzahl durchsuchte Verzeichnisse.
	cancel_search								        :	Boolean;            //  Suche abbrechen
	gui_language                        : String;             //  Sprache
	ini_file_name                       : string;
	default_ini_file_name               : string;

	StopWatchSearchTimeStart            : TDateTime;          //  Startzeitpunkt der Suche
	StopWatchSearchTimeEnd              : TDateTime;          //  Stopzeitpunkt der Suche
	StopWatchScanTimeStart              : TDateTime;          //  Startzeitpunkt
	StopWatchScanTimeEnd                : TDateTime;          //  Stopzeitpunkt
	StopWatchStart                      : TDateTime;          //  Startzeitpunkt
	StopWatchEnd                        : TDateTime;          //  Stopzeitpunkt
	total_work_duration									: TDateTime;

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
	mp3list_html_output_format          : String;
	mp3list_text_files_zip              : Boolean;
	mp3list_text_files_delete_after_zip : Boolean;
	mp3list_html_files_zip              : Boolean;
	mp3list_html_files_delete_after_zip : Boolean;
	mp3list_Character_stringlists       : array[0..26]  of TStringList;
	mp3list_text_file_encoding					:	Integer;            //	0 : UTF8; 1 : ANSI
	mp3list_SearchAndReplace			      : TStringList;
	xmllist_last_used_files             :	array[0..9]		of String;	//	die letzten 10 Pfade werden gemerkt
	InsertSortingZero										: Boolean;
	DeleteAfterFtpUpload								: Boolean;

	{Variablen für CD-Archive}
	cdarchive_path_to_read_in		        : String;
	cdarchive_path_to_act_archive	      : String;
	cdarchive_last_used_pathes          :	array[0..9]		of String;	//	die letzten 10 Pfade werden gemerkt

	FtpConnection	:	TFtpConnection;
	FtpUploadList	:	TStringList;

	LogList				:	TStringList;

	const
		SELDIRHELP = 1000;

implementation

{$R *.dfm}
{$R mp3tb_img.res}
{$WARN UNIT_PLATFORM off}

uses
	lib1,
	lib_html_output,
	U_Setup,
	U_Language,
	U_About;

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
	LogTS.TabVisible	:=	False;
	NameCheckTS.TabVisible	:=	False;
//	TabSheet3.TabVisible	:=	False;
//	TabSheet4.TabVisible	:=	False;
//	GenreTS.TabVisible		:=	False;
//	PageControl1.ActivePage	:=	TabSheet1;

	init_ok :=  True;
	GetDir(0, act_exec_directory);

	AppDataPath	:=	SlashSep(ExpandEnv('%APPDATA%'), 'mp3toolbox');
	if not DirectoryExists(AppDataPath) then
		MkDir(AppDataPath);

	html_files_output_path	:=	SlashSep(ExpandEnv('%TEMP%'), 'mp3toolbox-output');
	if not DirectoryExists(html_files_output_path) then
		MkDir(html_files_output_path);

	text_files_output_path	:=	SlashSep(ExpandEnv('%TEMP%'), 'mp3toolbox-output');
	if not DirectoryExists(text_files_output_path) then
		MkDir(text_files_output_path);

	ini_file_name               :=  	SlashSep(ExpandEnv('%APPDATA%'), 'mp3toolbox\mp3toolbox.cfg');
	default_ini_file_name       :=  	SlashSep(act_exec_directory, 'config\default.cfg');
	for i := 0 to Length(mp3list_Character_stringlists) do
		mp3list_Character_stringlists[i]  :=  TStringList.Create;

	FtpConnection	:=	TFtpConnection.Create;
	FtpUploadList	:=	TStringList.Create;

	LogList				:=	TStringList.Create;

	mp3list_SearchAndReplace  :=  TStringList.Create;

	ID3v2Tag := TID3v2Tag.Create;

//	version	:=	get_version() + ' beta';
	version	:=	get_version();

	if not FileExists(ini_file_name) then
		FirstStart	:=	True;

	{Begin: INI-Datei oeffnen und werte setzen}
	if FirstStart then
		Ini := TIniFile.Create(default_ini_file_name)
	else
		Ini := TIniFile.Create(ini_file_name);

	{Sprache auslesen}
	gui_language          	            :=	Ini.ReadString ('GENERAL',   'gui_language',    'GB');
	text_files_output_path	            :=	Ini.ReadString ('GENERAL',   'textdateien',     text_files_output_path);
	html_files_output_path	            :=	Ini.ReadString ('GENERAL',   'htmldateien',     html_files_output_path);
	pacman_speed											  :=	Ini.ReadInteger('GENERAL',   'pacmanspeed',     100);
	InsertSortingZero										:=	Ini.ReadBool	 ('GENERAL',   'InsertSortingZero',				True);
	DeleteAfterFtpUpload								:=	Ini.ReadBool	 ('GENERAL',   'DeleteAfterFtpUpload',		True);

	// Read all search & replace pairs from INI
	i	:=	0;
	while Ini.ReadString ('GENERAL', 'SeachAndReplace' + IntToStr(i), '') <> '' do
	begin
		mp3list_SearchAndReplace.Add(Ini.ReadString ('GENERAL', 'SeachAndReplace' + IntToStr(i), ''));
		inc(i);
	end;



	mp3list_single_template_file			  :=  Ini.ReadString ('MP3LIST',   'single_template', SlashSep(act_exec_directory, 'templates\mp3list-template2.html'));
	mp3list_multi_template_file				  :=  Ini.ReadString ('MP3LIST',   'multi_template', 	SlashSep(act_exec_directory, 'templates\mp3list-letter-template2.html'));
	mp3list_html_multi_output           :=	Ini.ReadInteger('MP3LIST',   'multi_output',    0);
	mp3list_html_file_name				      :=  Ini.ReadString ('MP3LIST',   'mp3list_html_file_name', 	  'mp3list');
	mp3list_html_file_ending				    :=  Ini.ReadString ('MP3LIST',   'mp3list_html_file_ending',  '.html');
	mp3list_html_output_format					:=	Ini.ReadString ('MP3LIST',   'output_format',		'%artist% - %album% - %track% - %title% (%year%)');
	mp3list_text_files_zip	            :=	Ini.ReadBool   ('MP3LIST',   'zip_text_files',  False);
	mp3list_text_files_delete_after_zip :=	Ini.ReadBool   ('MP3LIST',   'text_files_delete_after_zip',  False);
	mp3list_html_files_zip              :=	Ini.ReadBool   ('MP3LIST',   'zip_html_files',  False);
	mp3list_html_files_delete_after_zip :=	Ini.ReadBool   ('MP3LIST',   'html_files_delete_after_zip',  False);
	mp3list_text_file_encoding           :=	Ini.ReadInteger('MP3LIST',   'text_file_encoding',    0);

	cdarchive_path_to_read_in		        :=  Ini.ReadString ('CDARCHIV',  'SINGLEDISKPATH',  'C:\');
	for i := 0 to 9 do
		cdarchive_last_used_pathes[i]	    :=  Ini.ReadString ('CDARCHIV',  'SourcePath'+IntToStr(i), '');

	cdarchive_path_to_act_archive       :=	cdarchive_last_used_pathes[0];

	for i := 0 to 9 do
		xmllist_last_used_files[i]	      :=  Ini.ReadString ('XMLLIST',   'File'+IntToStr(i), '');

	pacman_adjustment_visible         	:=  Ini.ReadBool   ('DEVELOP',   'PACMAN_ADJUSTMENT', False);

	FtpConnection.Hostname							:=  Ini.ReadString ('FTP',    	 'hostname', '');
	FtpConnection.Username							:=  Ini.ReadString ('FTP',    	 'username', '');
	FtpConnection.Password							:=  Ini.ReadString ('FTP',    	 'password', '');
	FtpConnection.RemoteDir							:=  Ini.ReadString ('FTP',    	 'remotedir', '');

	Ini.Free;
	{End: INI-Datei oeffnen und werte setzen}

	mp3list_html_output_file    :=	mp3list_html_file_name + mp3list_html_file_ending;
	mp3list_text_output_file    :=  mp3list_html_file_name + '.txt';

	{Set filter-options}
	filter_ComboBox.ItemIndex		:=	0;	 //	default is mp3
	search_filter_expression		:=	filter_ComboBox.Items[filter_ComboBox.ItemIndex];


	F_Main.Caption :=  'MP3Toolbox ' + version;
//  Form1.Caption :=  'mp3toolbox version ' + get_version(1,1,0,1);


// 66666
  output_with_pathes    :=  True;
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
		FolderScanPacmanPanel.Visible  :=  True;
	FolderScanPacmanSpeedEdit.Text			:=  IntToStr(pacman_speed);
  Pacman_Move_Timer.Interval  :=  pacman_speed;


  {Sprache}
	Set_Language(gui_language);
	init_text(Sender);

	{Combobox neu füllen}
	ITunesImportXmlFileCB.Clear;
	for i := 0 to 9 do
	begin
		if FileExists(xmllist_last_used_files[i]) then
		begin
			ITunesImportXmlFileCB.Items.Add(xmllist_last_used_files[i]);
			ITunesImportGoBtn.Enabled :=  True;
		end;
	end;
	ITunesImportXmlFileCB.ItemIndex	:=	0;

end;

{--- If form is resized -------------------------------------------------------}
procedure TF_Main.FormResize(Sender: TObject);
begin
	MainSelectionPanel1.Align	:=	alClient;
	MainSelectionPanel2.Left	:=	(MainSelectionPanel1.Width - MainSelectionPanel2.Width) div 2;
	MainSelectionPanel2.Top		:=	(MainSelectionPanel1.Height - MainSelectionPanel2.Height) div 2;
end;

{--- Menu : Show Setup Form ---------------------------------------------------}
procedure TF_Main.Setup1Click(Sender: TObject);
begin
	F_Setup.Show;
end;

procedure TF_Main.Showfoundgenres1Click(Sender: TObject);
begin
	GenreTS.TabVisible	:=	True;
end;

procedure TF_Main.Speichernunter1Click(Sender: TObject);
var
	ToF	:TextFile;
  i: Integer;
begin
	//
//  SaveDialog_File.InitialDir	:=	lib1.gGetTempDir;
	if SaveDialog_File.Execute() then
	begin
		AssignFile(ToF, SaveDialog_File.FileName);
		Rewrite(ToF);
		for i := 0 to MP3_ListBox.Count - 1 do
			writeln(ToF, MP3_ListBox.Items[i]);
		CloseFile(ToF);
	end;

end;

{--- OnShow -------------------------------------------------------------------}
procedure TF_Main.FormShow(Sender: TObject);
begin
	if FirstStart then
	begin
//    init_ok                   :=  False;
//    Load_From_Button.Enabled  :=  False;
		ShowMessage('Looks like you run the programm for the first time. Please adjust your settings and save them.');
		F_Setup.ShowModal;
	end;

	FolderScanListResultLab2.Caption	:=	'...';
	FolderScanListDirCntLab2.Caption	:=	'...';
	FolderScanScanTimeLab2.Caption		:=	'...';
	FolderScanScanResult2.Caption			:=	'...';
	FolderScanScanTimeLab2.Caption		:=	'...';

	//66666
	CheckForUpdates(True);;
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
	FolderScanTS.Caption                    :=  GetTxt( 1,  3, 'Ordner-Archive');
	ITunesImportTS.Caption                  :=  GetTxt( 1, 58, 'iTunes Import');
	ErrorTS.Caption                      		:=  GetTxt( 1, 91, 'Error');
	LogTS.Caption                           :=  GetTxt( 1, 92, 'Log');
	NameCheckTS.Caption                     :=  GetTxt( 1, 93, 'Name check');
	File1.Caption                           :=  GetTxt( 1, 14, 'Datei');
	Help1.Caption                           :=  GetTxt( 1, 15, 'Hilfe');
	Exit1.Caption                           :=  GetTxt( 1, 16, 'Beenden');
	Setup1.Caption                          :=  GetTxt( 1, 39, 'Einstellungen');
	Goo1.Caption                            :=  GetTxt( 1, 40, 'Website at Google Code');
	WebsiteofAuthor1.Caption                :=  GetTxt( 1, 41, 'Website of Author');
	AboutMP3Toolbox1.Caption                :=  GetTxt( 1, 42, 'About');
	SearchResultTS.Caption                  :=  GetTxt( 1, 60, 'Search results');
	Extra1.Caption                				  :=  GetTxt( 1, 61, 'Extra');
	UploadtoFTP1.Caption                	  :=  GetTxt( 1, 62, 'Upload via FTP');
	GenreTS.Caption			                	  :=  GetTxt( 1, 67, 'Genre');
	GenreLab.Caption			                  :=  GetTxt( 1, 68, 'Found genres');
	Showfoundgenres1.Caption			          :=  GetTxt( 1, 69, 'Show found genres');
	FolderScanMultiDirGroupBox.Caption      :=  GetTxt( 1,  6, 'Verzeichnisse ');
	Output_with_filesize_CB.Caption        	:=  GetTxt( 1,  7, 'Ausgabe mit Dateigroesse');
	Output_with_path_CB.Caption            	:=  GetTxt( 1,  8, 'Ausgabe mit Pfad');
	Subdir_CheckBox.Caption                	:=  GetTxt( 1,  9, 'Unterverz. durchsuchen');
	Sel_Dir_Btn.Caption                    	:=  GetTxt( 1, 10, 'Pfad auswaehlen');
	Own_Filter_CheckBox.Caption            	:=  GetTxt( 1, 11, 'eigener Filter');
	FolderScanTxtOutputBtn.Caption         	:=  GetTxt( 1, 12, 'Textdatei erzeugen');
	FolderScanHtmlOutputBtn.Caption        	:=  GetTxt( 1, 13, 'Webseite erzeugen');
	ITunesImportHtmlOutputBtn.Caption      	:=  GetTxt( 1, 13, 'Webseite erzeugen');
	Load_From_Button.Caption               	:=  GetTxt( 1, 43, 'Load directories from config');
	Save_To_Button.Caption                 	:=  GetTxt( 1, 44, 'Save directories');
	Sel_All_Button.Caption                 	:=  GetTxt( 1, 45, 'Select all');
	Sel_None_Button.Caption                	:=  GetTxt( 1, 46, 'Select none');
	Clear_Sel_Button.Caption               	:=  GetTxt( 1, 47, 'Clear selected');
	Clear_All_Button.Caption               	:=  GetTxt( 1, 48, 'Clear all');
	FolderScanGoBtn.Caption                	:=  GetTxt( 1, 49, 'Go !');
	ITunesImportGoBtn.Caption              	:=  GetTxt( 1, 49, 'Go !');
	FolderScanListResultLab1.Caption        :=  GetTxt( 1, 50, 'Files found');
	FolderScanListDirCntLab1.Caption        :=  GetTxt( 1, 51, 'Directories searched');
	FolderScanListSearchTimeLab1.Caption    :=  GetTxt( 1, 52, 'Search time');
	FolderScanScanResult1.Caption         	:=  GetTxt( 1, 53, 'Tags scanned');
	FolderScanScanTimeLab1.Caption        	:=  GetTxt( 1, 54, 'Scan time');
	ITunesImportScanTime1.Caption          	:=  GetTxt( 1, 54, 'Scan time');
	ITunesImportXmlFileLab.Caption					:=  GetTxt( 1, 57, 'XML-Datei zum Verarbeiten');
	ITunesImportFoundCntLab1.Caption				:=  GetTxt( 1, 59, 'Items found');
	ITunesImportHyperlinkLab.Caption				:=	GetTxt( 1, 76, 'How to get these XML files?');
	CheckforUpdate1.Caption									:=  GetTxt( 1, 84, 'Scan time');
	MainSelectionBtn1.Caption								:=  GetTxt( 1, 94, 'Scan your folders for MP3 files and create your websites');
	MainSelectionBtn2.Caption								:=  GetTxt( 1, 95, 'Import your iTunes library and create your websites');
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
	sOutDir : String;
	fb      : TFolderBrowser;
begin
	fb := TFolderBrowser.Create(Application.Handle, 'Select a folder to search');
	{Dialog für Verzeichnisauswahl starten}

	if(fb <> nil) then
	begin
		fb.ShowFiles	:=	false;                  				//keine Dateien anzeigen
		fb.Left 			:=	Round(Screen.Width	/2)-162;  	//Folderauswahl ist 324 breit
		fb.Top  			:=	Round(Screen.Height	/2)-169;		//Folderauswahl ist 338 hoch

		if(fb.Execute) then
			sOutDir	:= fb.SelectedItem;
	end;

	fb.Free;

	if sOutDir	<>	'' then
  begin
    {Nur wenn Ordner ausgewählt wurde.}
	 	Multi_Dir_ListBox.Items.Add(sOutDir);
  end;
end;

{--- MP3List : Load values from inifile ---------------------------------------}
procedure TF_Main.FolderScanListResultLab1Click(Sender: TObject);
begin
	UploadToFtp;
end;

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
		FolderScanGoBtn.Enabled	:=	True
  else
		FolderScanGoBtn.Enabled	:=	False;
end;

{--- MP3List : Select no pathentries in listbox -------------------------------}
procedure TF_Main.Sel_None_ButtonClick(Sender: TObject);
var
	i	:	Integer;
begin
	if Multi_Dir_ListBox.Items.Count > 0 then
		for i	:= 0 to	(Multi_Dir_ListBox.Items.Count - 1) do
    	Multi_Dir_ListBox.Selected[i]	:=	False;

	FolderScanGoBtn.Enabled  :=  False;
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
	FolderScanGoBtn.Enabled  :=  False;			//	Erst wenn Pfad gewählt wurde.
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
		FolderScanGoBtn.Enabled	:=	True
  else
		FolderScanGoBtn.Enabled	:=	False;
end;


{--- MP3List : search selected pathes and fill listbox ------------------------}
procedure TF_Main.FolderScanGoBtnClick(Sender: TObject);
var
	Files							:	TStringList;                       //  Stringliste
	i									:	Integer;
	gauge_step				:	Integer;
	ResultString			:	String;
begin
	FolderScanListResultLab2.Caption	:=	'...';
	FolderScanListDirCntLab2.Caption	:=	'...';
	FolderScanListSearchTimeLab2.Caption	:=	'...';
	FolderScanScanResult2.Caption	:=	'...';
	FolderScanScanTimeLab2.Caption	:=	'...';

//	MP3_ListBox.BringToFront;
	NameCheck_ListBox.Clear;

	{When Search is canceled.}
	if search_status  = True then
	begin
		cancel_search	:=	True;
	end;

	if search_status  = False then
	begin
		search_status :=  True;

		FolderScanGoBtn.Glyph.LoadFromResourceName(HInstance,'vcrstop');
		FolderScanGoBtn.Caption  :=  GetTxt( 1, 55, 'Stop');

		{Startzeit der suche}
		StopWatchSearchTimeStart := Time;


		{Pacman aktivieren und starten}
		FolderScanPacmanBtn.Visible        :=  True;
		FolderScanPacmanBtn.Repaint;
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
				FolderScanSearchProgressBar.Position	:=	(100 div Multi_Dir_ListBox.SelCount) * gauge_step;
			end;
		end;


		{Pacman anhalten}
		Pacman_Move_Timer.Enabled :=  False;
		FolderScanPacmanBtn.Visible        :=  False;

		{fill progressbar up}
		FolderScanSearchProgressBar.Position :=	100;

		{Ende der Suchzeit}
		StopWatchSearchTimeEnd           :=  Time;

		{Anzahl durchgesuchter Verzeichnisse anzeigen.}
		FolderScanListDirCntLab2.Caption	  :=	IntToStr(searched_dir_count);


		{Anzeige der Suchzeit.}
		FolderScanListSearchTimeLab2.Caption		:=	TimeToStr(StopWatchSearchTimeEnd - StopWatchSearchTimeStart);

		{Stringliste sortieren}
		Files.Sort;

		{filter and fill ListBox}
(*
		for i:= 0  to Files.Count - 1 do
		begin
			if Files[i] <> '%s.mp3' then
				MP3_ListBox.Items.Add(Files[i]);
		end;
*)
		FolderScanSearchProgressBar.Position	:=	0;
		ListBox_Error.Clear;
		ErrorTS.TabVisible	:=	False;

		{Startzeit des scans}
		StopWatchScanTimeStart := Time;

		{Pacman aktivieren und starten}
    FolderScanPacmanBtn.Visible        :=  True;
		FolderScanPacmanBtn.Repaint;
		pacman_direction          :=  True;
		Pacman_Move_Timer.Enabled :=  True;

		for i:= 0  to Files.Count - 1 do
		begin
			if cancel_search then
				break;

			if Files[i] <> '%s.mp3' then
			begin
				// get id3 values
				try
					ID3v2Tag.ReadFromFile(Files[i]);
				except
					ListBox_Error.Items.Add('!!! Check this file: ' + Files[i]);
				end;

				// check if artist is present. Add to error list if not
				if ID3v2Tag.Artist = '' then
				begin
					ListBox_Error.Items.Add(Files[i]);
				end
				else
				begin
					// Check existence for each placeholder and replace it

					//	check Tracknr for given digits
					if InsertSortingZero and (ID3v2Tag.Track <> '') then
					begin
						try
							if StrToInt(ID3v2Tag.Track) < 10 then
								ID3v2Tag.Track	:=	'0' + ID3v2Tag.Track;
						except
						end;
					end;

					// Edit_Output_Format
					ResultString	:=	mp3list_html_output_format;

					ResultString	:=	ReplaceVariablesInResult(ResultString,
																											ID3v2Tag.Artist,
																											ID3v2Tag.Album,
																											ID3v2Tag.Track,
																											ID3v2Tag.Title,
																											ID3v2Tag.Genre,
																											ID3v2Tag.Year,
																											'',
																											'');

					// check search and replace list
					ResultString	:=	SearchAndReplace (ResultString);

					MP3_ListBox.Items.Add(ResultString);
				end;

				// Debug for mark: Check if comment is present
				//if ID3v2Tag.Comment <> '' then
					//ListBox_Error.Items.Add('!!! Comment found: ' + Files[i]);


				FolderScanSearchProgressBar.Position	:=	Round((100 * (i + 1)) div (Files.Count));
				Application.ProcessMessages;
			end;

			FolderScanScanResult2.Caption	:=	IntToStr(i + 1);

			if not ErrorTS.TabVisible then
			begin
				if ListBox_Error.Count > 0 then
					ErrorTS.TabVisible	:=	True;
			end;
		end;
		FolderScanSearchProgressBar.Position	:=	100;

		{Ende der Suchzeit}
		StopWatchScanTimeEnd           :=  Time;

		{Pacman anhalten}
		Pacman_Move_Timer.Enabled :=  False;
		FolderScanPacmanBtn.Visible        :=  False;

		{Anzeige der Suchzeit.}
		FolderScanScanTimeLab2.Caption		:=	TimeToStr(StopWatchScanTimeEnd - StopWatchScanTimeStart);

		total_work_duration	:=  (StopWatchScanTimeEnd - StopWatchScanTimeStart) +
														(StopWatchSearchTimeEnd - StopWatchSearchTimeStart);

		{total counter (wird für ausgabenschleife benötigt TXT und HTML}
		mp3list_result_count		  :=	MP3_ListBox.Items.Count;

    {Anzahl gefundener Treffer anzeigen.}
		FolderScanListResultLab2.Caption		  :=	IntToStr(mp3list_result_count);

		{If result are present then allow output}
		FolderScanTxtOutputBtn.Enabled		:=	MP3_ListBox.Items.Count > 0;
		FolderScanHtmlOutputBtn.Enabled :=	MP3_ListBox.Items.Count > 0;

    {Speicher freigeben}
    Files.Free;

		{Button zurücksetzen}
		FolderScanGoBtn.Glyph.LoadFromResourceName(HInstance,'vcrplay');
		FolderScanGoBtn.Caption  :=  GetTxt( 1, 49, 'Go !');

		cancel_search	:=	False;
		search_status :=  False;

		{clear progressbar}
    FolderScanSearchProgressBar.Position :=	0;
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
procedure TF_Main.FolderScanTxtOutputBtnClick(Sender: TObject);
var
	i	:	Integer;
	s	:	TStrings;
begin
	S	:=	TStringList.Create();
	FolderScanSearchProgressBar.Min     	:=	0;
	FolderScanSearchProgressBar.Position :=	0;
	FolderScanSearchProgressBar.Max      :=  MP3_ListBox.Items.Count;

	//	Add result to StringList
	for I := 0 to MP3_ListBox.Items.Count - 1 do
		S.Add(MP3_ListBox.Items[i]);

	FtpUploadList.Clear;	//	Fresh list

	if mp3list_text_file_encoding = 0 then
		S.SaveToFile(SlashSep(text_files_output_path, mp3list_text_output_file), TEncoding.UTF8)
	else
		S.SaveToFile(SlashSep(text_files_output_path, mp3list_text_output_file));

	// Add full path to upload list
	FtpUploadList.Add(SlashSep(text_files_output_path, mp3list_text_output_file));

	F_Main.FolderScanSearchProgressBar.Position	:=	0;

	if mp3list_text_files_zip then
	begin
		{zip files}
		{ syntax : zip name_of_zip_file file1_to_zip file2_to_zip file3_to_zip}
(*
66666
				 system(PChar('zip -j' +
											' ' +
											SlashSep(text_files_output_path, mp3list_text_output_file) +
											'.zip' +
											' ' +
											SlashSep(text_files_output_path, mp3list_text_output_file)));
		if mp3list_text_files_delete_after_zip then
		begin
			if not DeleteFile(SlashSep(text_files_output_path, mp3list_text_output_file)) then
				ShowMessage('Could not remove files after zipping them.');
		end;
*)
	end;

	S.Free;

	lib1.Start_External_Program(self.WindowHandle,
															'open',
															'explorer',
															text_files_output_path,
															'',
															SW_SHOW);

end;

procedure TF_Main.Goo1Click(Sender: TObject);
begin
	lib1.Start_External_Program(self.WindowHandle,
															'open',
															GetTxt(1, 75, ''),
															'',
															'',
															SW_SHOW);
end;

procedure TF_Main.ITunesImportHyperlinkLabClick(Sender: TObject);
begin
	lib1.Start_External_Program(self.WindowHandle,
															'open',
															GetTxt(1, 73, ''),
															'',
															'',
															SW_SHOW);
end;

procedure TF_Main.WebsiteofAuthor1Click(Sender: TObject);
begin
	lib1.Start_External_Program(self.WindowHandle,
															'open',
															GetTxt(1, 74, ''),
															'',
															'',
															SW_SHOW);
end;


{--- MP3List : write mp3list as an website ------------------------------------}
procedure TF_Main.FolderScanHtmlOutputBtnClick(Sender: TObject);
var
	i		          :	Integer;
	i2	          :	Integer;
	dir	          :	array[0..26]	of Char;	//  array fuer die Buchstaben
	first_letter  : String;
	files_to_zip  : String;
	letter_found  : Boolean;
begin
	AddLogMessage('Start creating websites ...');

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
(*
66666
			Libc.system(PChar('zip -j' +
												' ' +
												SlashSep(html_files_output_path, mp3list_html_output_file) +
												'.zip' +
												' ' +
												SlashSep(html_files_output_path, mp3list_html_output_file)));
*)
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

		FolderScanSearchProgressBar.Min     	:=	0;
		FolderScanSearchProgressBar.Position :=	0;
    FolderScanSearchProgressBar.Max      :=  Length(dir) - 1;

		FtpUploadList.Clear;	//	Fresh list

		{Eine Seite pro Buchstabe}
		for i := 0 to Length(dir) - 1 do
		begin
			{Body}
			create_html_output(mp3list_multi_template_file,
												 SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending)),
												 dir[i],
												 i);
			// Add full path to upload list
			FtpUploadList.Add(SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending)));

			FolderScanSearchProgressBar.Position :=	i;
	  end;

		FolderScanSearchProgressBar.Position     	:=	0;

    {zip files}
    if mp3list_html_files_zip then
    begin
      files_to_zip  :=  '';
      for i := 0 to Length(dir) - 1 do
      begin
        if FileExists(SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending))) then
          files_to_zip  :=  files_to_zip + SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending)) + ' ';
        FolderScanSearchProgressBar.Position :=	i;
      end;
			{zip files}
      { syntax : zip name_of_zip_file file1_to_zip file1_to_zip file1_to_zip}
(*
66666
			Libc.system(PChar('zip -j' +
												' ' +
												SlashSep(html_files_output_path, mp3list_html_output_file) +
												'.zip' +
												' ' +
												files_to_zip));
*)
			for i := 0 to Length(dir) - 1 do
			begin
        if mp3list_html_files_delete_after_zip then
        begin
          if not DeleteFile(SlashSep(html_files_output_path, (mp3list_html_file_name + dir[i] + mp3list_html_file_ending))) then
            ShowMessage(GetTxt(1, 17, 'Kann Datei nicht löschen') + SlashSep(html_files_output_path, mp3list_html_output_file));
        end;
      end;
    end;

    FolderScanSearchProgressBar.Position     	:=	0;

	end;

	AddLogMessage('Websites created');

	lib1.Start_External_Program(self.WindowHandle,
															'open',
															'explorer',
															html_files_output_path,
															'',
															SW_SHOW);

end;

{--- MP3List : PopUp - Check filenames for anallowed characters ---------------}
procedure TF_Main.checkfilenames1Click(Sender: TObject);
var
	i	:	Integer;
begin
	NameCheckTS.TabVisible	:=	False;

	if MP3_ListBox.Items.Count > 0 then
		for i := 0 to MP3_ListBox.Items.Count - 1 do
			if check_filename(MP3_ListBox.Items[i]) then
				NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

	if NameCheck_ListBox.Items.Count > 0 then
		NameCheckTS.TabVisible	:=	True

end;

{--- MP3List : PopUp - Set visible properties ---------------------------------}
procedure TF_Main.FolderScanPopupMenuPopup(Sender: TObject);
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
	NameCheckTS.TabVisible	:=	False;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if check_filename_for_length(MP3_ListBox.Items[i], 64) then
				NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
		NameCheckTS.TabVisible	:=	True;

end;

{--- MP3List : PopUp - Check filenames for length ISO 9660 1 ------------------}
procedure TF_Main.ISO9660Level1121Click(Sender: TObject);
var
	i	:	Integer;
begin
	NameCheckTS.TabVisible	:=	False;

	if MP3_ListBox.Items.Count > 0 then
		for i := 0 to MP3_ListBox.Items.Count - 1 do
			if check_filename_for_length(MP3_ListBox.Items[i], 12) then
				NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

	if NameCheck_ListBox.Items.Count > 0 then
		NameCheckTS.TabVisible	:=	True;

end;

{--- MP3List : PopUp - Check filenames for length ISO 9660 2 ------------------}
procedure TF_Main.ISO9660Level2311Click(Sender: TObject);
var
	i	:	Integer;
begin
	NameCheckTS.TabVisible	:=	False;

	if MP3_ListBox.Items.Count > 0 then
		for i := 0 to MP3_ListBox.Items.Count - 1 do
			if check_filename_for_length(MP3_ListBox.Items[i], 31) then
				NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

	if NameCheck_ListBox.Items.Count > 0 then
		NameCheckTS.TabVisible	:=	True;

end;

{--- MP3List : PopUp - Check filenames for length ROMEO -----------------------}
procedure TF_Main.Romeo1281Click(Sender: TObject);
var
	i	:	Integer;
begin
	NameCheckTS.TabVisible	:=	False;

	if MP3_ListBox.Items.Count > 0 then
		for i := 0 to MP3_ListBox.Items.Count - 1 do
			if check_filename_for_length(MP3_ListBox.Items[i], 128) then
				NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

	if NameCheck_ListBox.Items.Count > 0 then
		NameCheckTS.TabVisible	:=	True;

end;

{--- MP3List : Bring MP3List to front if clicked ------------------------------}
procedure TF_Main.MP3_ListBoxClick(Sender: TObject);
begin
  MP3_ListBox.BringToFront;
end;

{--- MP3List : start moving the PACMAN ----------------------------------------}
procedure TF_Main.FolderScanPacmanStartBtnClick(Sender: TObject);
begin
  {Pacman aktivieren und starten}
	FolderScanPacmanStartBtn.Visible        :=  True;
  Pacman_Move_Timer.Enabled :=  True;
  pacman_direction          :=  True;
	FolderScanPacmanSpeedEdit.Text    :=  IntToStr(Pacman_Move_Timer.Interval);
end;

procedure TF_Main.StatusBarClick(Sender: TObject);
begin
	LogTS.TabVisible	:=	True;
	PageControl2.ActivePage	:=	LogTS;
	// Show log history
//	LogListBox.Visible	:=	True;
//	LogListBox.BringToFront;
end;

{--- MP3List : Close PACMAN setuppanel ----------------------------------------}
procedure TF_Main.FolderScanPacmanCloseBtnClick(Sender: TObject);
begin
  {Pacman deaktivieren und ausblenden}
	FolderScanPacmanBtn.Visible        :=  False;
  Pacman_Move_Timer.Enabled :=  False;
	FolderScanPacmanPanel.Visible			:=	False;

  {Pfade speichern}
	Ini := TIniFile.Create(ini_file_name);
  Ini.WriteInteger ('GENERAL',  'pacmanspeed' , Pacman_Move_Timer.Interval);
  Ini.Free;
end;

{--- MP3List : Set EDIT value to timerinterval --------------------------------}
procedure TF_Main.FolderScanPacmanSpeedEditChange(Sender: TObject);
begin
	Pacman_Move_Timer.Interval  :=  StrToInt(FolderScanPacmanSpeedEdit.Text);
end;


procedure TF_Main.PageControl2Change(Sender: TObject);
begin

end;

{--- MP3List : timner to start moving the PACMAN ------------------------------}
procedure TF_Main.Pacman_Move_TimerTimer(Sender: TObject);
begin
  if pacman_direction = True then
  begin
		FolderScanPacmanBtn.Glyph.LoadFromResourceName(HInstance,'eater-r');
		if FolderScanPacmanBtn.Left > FolderScanTS.ClientWidth - 45 then
      pacman_direction  :=  False;
		FolderScanPacmanBtn.Left :=  FolderScanPacmanBtn.Left + 8 ;
		FolderScanPacmanBtn.Repaint;
  end
  else
  begin
		FolderScanPacmanBtn.Glyph.LoadFromResourceName(HInstance,'eater-l');
		if FolderScanPacmanBtn.Left < FolderScanSearchProgressBar.Left then
			pacman_direction  :=  True;
		FolderScanPacmanBtn.Left :=  FolderScanPacmanBtn.Left - 8 ;
		FolderScanPacmanBtn.Repaint;
	end;
end;


procedure TF_Main.ITunesImportGoBtnClick(Sender: TObject);
var
	i,
	i2,
	i3,
	i4	:	Integer;
	MyChild,
	MyChild2	:	IXMLNode;
	ResultString,
	artist,
	album,
	track,
	title,
	year,
	TrackType,
	genre	: String;
	ln	:	RawByteString;
	HasVideo,
	podcast		:	Boolean;
	GenreFound: Boolean;
	F: TextFile;
	DiscNo: string;
	DiscCnt: string;
begin
	ITunesImportFoundCntLab2.Caption	:=	'...';
	ITunesImportScanTime2.Caption	:=	'...';
	ListBox_Error.Clear;

	StopWatchStart := Time;

	{When Search is canceled.}
	if search_status  = True then
	begin
		cancel_search	:=	True;
	end;

	if search_status  = False then
	begin
		search_status :=  True;

		ITunesImportGoBtn.Glyph.LoadFromResourceName(HInstance,'vcrstop');
		ITunesImportGoBtn.Caption  :=  GetTxt( 1, 55, 'Stop');

		if not FileExists(ITunesImportXmlFileCB.Text) then
		begin
			if MessageDlg('File  "' + ITunesImportXmlFileCB.Text + '" not found.',
								mtWarning,[mbYes, mbNo], 0) = mrYes then
			begin
			end;
		end
		else
			MP3_ListBox.Clear;

		// Load XML File

		// Ignoring second line > DTD
		//	http://code.google.com/p/mp3toolbox/issues/detail?id=34

		AddLogMessage('Preloading XML file');
		AssignFile(F, ITunesImportXmlFileCB.Text);
		Reset(F);
		cnt	:=	0;
		While not Eof(F) do
		begin
			inc(cnt);
			Readln(F, ln);
			if not (cnt = 2) then
				XMLDocumentiTunesImport.XML.Add(UTF8ToString(ln));
		end;
		CloseFile(F);

		XMLDocumentiTunesImport.Active	:=	True;

		AddLogMessage('Processing XML content');
		for i := 0 to XMLDocumentiTunesImport.DocumentElement.ChildNodes.Count - 1 do
		begin
			Application.ProcessMessages;

			if cancel_search then
				break;

			//		ShowMessage((XMLDocument1.DocumentElement.ChildNodes[i].LocalName ));
			MyChild	:=	XMLDocumentiTunesImport.DocumentElement.ChildNodes[i];
//		ShowMessage((MyChild.ChildNodes[i].LocalName ));
(*
		for i2 := 0 to MyChild.ChildNodes.Count - 1 do
		begin
//		if XMLDocument1.DocumentElement.ChildNodes[i].LocalName <> '' then
			ShowMessage((MyChild.ChildNodes[i2].LocalName ));
		end;
*)
			MyChild2	:=	MyChild.ChildNodes['dict'];
//		ShowMessage(IntToStr(MyChild2.ChildNodes.Count));
//		ShowMessage(MyChild2.ChildNodes['key'].Text);

			{Startzeit des scans}
			StopWatchScanTimeStart := Time;

			for i3 := 0 to MyChild2.ChildNodes.Count - 1 do
			begin
				Application.ProcessMessages;

				if cancel_search then
					break;

				//
	//			ShowMessage(MyChild2.ChildNodes[i3].LocalName);
				if MyChild2.ChildNodes[i3].LocalName = 'dict' then
				begin

					MyChild	:=	MyChild2.ChildNodes[i3];
	//				ShowMessage(IntToStr(MyChild.ChildNodes.Count));
	//				ShowMessage(MyChild.ChildNodes['key'].Text);
					artist		:=	'';
					Album			:=	'';
					Track			:=	'';
					Title			:=	'';
					Year			:=	'';
					TrackType	:=	'';
					Genre			:=	'';
					HasVideo	:=	False;
					Podcast		:=	False;
					DiscNo		:=	'';
					DiscCnt		:=	'';

					for i2 := 0 to MyChild.ChildNodes.Count - 1 do
					begin
						Application.ProcessMessages;

						if cancel_search then
							break;

						if MyChild.ChildNodes[i2].Text = 'Artist' then
							Artist	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Album' then
							Album	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Track Number' then
							Track	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Name' then
							Title	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Year' then
							Year	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Track Type' then
							TrackType	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Genre' then
							genre	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Has Video' then
							HasVideo	:=	True;

						if MyChild.ChildNodes[i2].Text = 'Podcast' then
							podcast	:=	True;

						if MyChild.ChildNodes[i2].Text = 'Disc Number' then
							DiscNo	:=	MyChild.ChildNodes[i2 +1 ].Text;

						if MyChild.ChildNodes[i2].Text = 'Disc Count' then
							DiscCnt	:=	MyChild.ChildNodes[i2 +1 ].Text;

						// Add genre to listbox
						if Genre_CheckListBox.Items.Count > 0 then
						begin

							GenreFound	:=	False;

							for i4 := 0 to Genre_CheckListBox.Items.Count - 1 do
							begin
								if Genre_CheckListBox.Items[i4] = genre then
								begin
									GenreFound	:=	True;
									break;
								end;
							end;

							if not GenreFound then
								Genre_CheckListBox.Items.Add(genre);

						end
						else
							Genre_CheckListBox.Items.Add(genre);

						Genre_CheckListBox.Sorted	:=	True;


					end;

					ResultString	:=	mp3list_html_output_format;

					//	check Tracknr for given digits
					if InsertSortingZero and (Track <> '') then
					begin
						try
							if StrToInt(Track) < 10 then
								Track	:=	'0' + Track;
						except
						end;
					end;

					// Edit_Output_Format
					ResultString	:=	ReplaceVariablesInResult(ResultString,
																											Artist,
																											Album,
																											Track,
																											Title,
																											Genre,
																											Year,
																											DiscNo,
																											DiscCnt);

					// check search and replace list
					ResultString	:=	SearchAndReplace (ResultString);

					if (TrackType = 'URL') then
						ListBox_Error.Items.Add(ResultString + ' (Tracktype: URL)')
					else if (genre = 'Hörbuch') then
						ListBox_Error.Items.Add(ResultString + ' (Genre: Hörbuch)')
					else if (genre = 'Kinderlieder') then
						ListBox_Error.Items.Add(ResultString + ' (Genre: Kinderlieder)')
					else if HasVideo then
						ListBox_Error.Items.Add(ResultString + ' (Is Video)')
					else if podcast then
						ListBox_Error.Items.Add(ResultString + ' (Is Podcast)')
					else
						MP3_ListBox.Items.Add(ResultString);

				end;
			end;
			{Ende der Suchzeit}
			StopWatchScanTimeEnd           :=  Time;

			{Anzeige der Suchzeit.}
			ITunesImportFoundCntLab2.Caption		:=	TimeToStr(StopWatchScanTimeEnd - StopWatchScanTimeStart);

			total_work_duration	:=  (StopWatchScanTimeEnd - StopWatchScanTimeStart) +
															(StopWatchSearchTimeEnd - StopWatchSearchTimeStart);

			{total counter (wird für ausgabenschleife benötigt TXT und HTML}
			mp3list_result_count		  :=	MP3_ListBox.Items.Count;

			MP3_ListBox.Sorted	:=	True;
			ITunesImportFoundCntLab2.Caption	:=	IntToStr(mp3list_result_count);

			if not ErrorTS.TabVisible then
			begin
				if ListBox_Error.Count > 0 then
					ErrorTS.TabVisible	:=	True;
			end;

		end;

		{Button zurücksetzen}
		ITunesImportGoBtn.Glyph.LoadFromResourceName(HInstance,'vcrplay');
		ITunesImportGoBtn.Caption  :=  GetTxt( 1, 49, 'Go !');

		cancel_search	:=	False;
		search_status :=  False;

		XMLDocumentiTunesImport.Active	:=	False;
		XMLDocumentiTunesImport.XML.Clear;

		AddLogMessage('XML processing done.');

	end;

	StopWatchEnd           :=  Time;

	ITunesImportScanTime2.Caption		:=	TimeToStr(StopWatchEnd - StopWatchStart);

	ITunesImportHtmlOutputBtn.Enabled :=	MP3_ListBox.Items.Count > 0;
end;

procedure TF_Main.ITunesImportXmlFileSelectBtnClick(Sender: TObject);
var
	i	:	Integer;
	INI	:	TIniFile;
begin
	if OpenDialog_FileSelect.Execute = True then
	begin
		ITunesImportXmlFileCB.Items.Add(OpenDialog_FileSelect.FileName);
		ITunesImportXmlFileCB.Text	:=	OpenDialog_FileSelect.FileName;

		ITunesImportGoBtn.Enabled :=  True;

		{neuen Pfad merken und einordnen}
		move_memory_combos(xmllist_last_used_files, OpenDialog_FileSelect.FileName);

		{Pfade speichern}
		Ini := TIniFile.Create(ini_file_name);

		for i := 0 to 9 do
			Ini.WriteString ('XMLLIST',  'File' + IntToStr(i), xmllist_last_used_files[i]);

		Ini.Free;

		{Combobox neu füllen}
		ITunesImportXmlFileCB.Clear;
		for i := 0 to 9 do
		begin
			if FileExists(xmllist_last_used_files[i]) then
				ITunesImportXmlFileCB.Items.Add(xmllist_last_used_files[i]);
		end;
		ITunesImportXmlFileCB.ItemIndex	:=	0;
	end;
end;

procedure TF_Main.MainSelectionBtn1Click(Sender: TObject);
begin
	MainSelectionPanel1.Visible	:=	False;
	FolderScanTS.TabVisible	:=	True;
	ITunesImportTS.TabVisible	:=	False;
	ErrorTS.TabVisible	:=	False;
	GenreTS.TabVisible	:=	False;
end;

procedure TF_Main.MainSelectionBtn2Click(Sender: TObject);
begin
	MainSelectionPanel1.Visible	:=	False;
	ITunesImportTS.TabVisible	:=	True;
	FolderScanTS.TabVisible	:=	False;
	ErrorTS.TabVisible	:=	False;
	GenreTS.TabVisible	:=	False;
end;

procedure TF_Main.ITunesImportXmlFileCBChange(Sender: TObject);
begin
	ITunesImportGoBtn.Enabled	:=	ITunesImportXmlFileCB.Text <> '';
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

procedure TF_Main.checkfilenamesfornoof1Click(Sender: TObject);
var
	i	:	Integer;
begin
	NameCheckTS.TabVisible	:=	False;

	if MP3_ListBox.Items.Count > 0 then
  	for i := 0 to MP3_ListBox.Items.Count - 1 do
      if get_no_of_chars(MP3_ListBox.Items[i], '-') > 3 then
      	NameCheck_ListBox.Items.Add(MP3_ListBox.Items[i]);

  if NameCheck_ListBox.Items.Count > 0 then
		NameCheckTS.TabVisible	:=	True;

end;

procedure TF_Main.AboutMP3Toolbox1Click(Sender: TObject);
begin
	F_About.Show;
end;

procedure TF_Main.NameCheck_ListBoxMouseUp(Sender: TObject;
	Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if  NameCheck_ListBox.ItemIndex >= 0 then
		Char_Count_Lab.Caption  :=  IntToStr(Length(NameCheck_ListBox.Items[NameCheck_ListBox.ItemIndex]));
end;

function TF_Main.SearchAndReplace(s : String): string;
var
	i	:	Integer;
begin
	for i := 1 to F_Setup.ValueListEditor_SeachAndReplace.RowCount - 1 do
		begin
			if F_Setup.ValueListEditor_SeachAndReplace.Keys[i] <> '' then
				s	:=	StringReplace(s,
																	F_Setup.ValueListEditor_SeachAndReplace.Keys[i],
																	F_Setup.ValueListEditor_SeachAndReplace.Values[F_Setup.ValueListEditor_SeachAndReplace.Keys[i]],
																	[rfReplaceAll, rfIgnoreCase]);
	end;
	Result	:=	s;
end;

function TF_Main.ReplaceVariablesInResult(AString,
																					AArtist,
																					AAlbum,
																					ATrack,
																					ATitle,
																					AGenre,
																					AYear,
																					ADiscNo,
																					ADiscCnt  : String) : String;
begin
	AString	:=	StringReplace(AString, '%artist%', AArtist, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%album%', AAlbum, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%track%', ATrack, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%title%', ATitle, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%genre%', AGenre, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%year%', AYear, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%discno%', ADiscNo, [rfReplaceAll, rfIgnoreCase]);

	AString	:=	StringReplace(AString, '%disccnt%', ADiscCnt, [rfReplaceAll, rfIgnoreCase]);

	Result	:=	AString;

	//	docs:	https://code.google.com/p/mp3toolbox/wiki/ListOfVariables
end;

function TF_Main.UploadToFtp : Boolean;
var
	i	:	Integer;
begin
	FtpUpload.Host			:=	FtpConnection.Hostname;
	FtpUpload.Username	:=	FtpConnection.Username;
	FtpUpload.Password	:=	FtpConnection.Password;
	FtpUpload.Connect;

	if FtpUpload.Connected then
	begin
		FtpUpload.ChangeDir(FtpConnection.RemoteDir);
		for i := 0 to FtpUploadList.Count - 1 do
		begin
			FtpUpload.Put(FtpUploadList[i], get_filename_from_complete_string(FtpUploadList[i], '\'), False);
			AddLogMessage('Uploaded file ' + IntToStr(i + 1) + ' of ' + IntToStr(FtpUploadList.Count));
		end;
		Result	:=	True;
	end
	else
		Result	:=	False;

	FtpUpload.Disconnect;

end;

function TF_Main.FtpTestConnection (var error	:	String) : Boolean;
begin
	FtpUpload.Host			:=	FtpConnection.Hostname;
	FtpUpload.Username	:=	FtpConnection.Username;
	FtpUpload.Password	:=	FtpConnection.Password;

	Result	:=	True;

	try
		FtpUpload.Connect;
	except
		Result	:=	False;
		error	:=	'Unable to connect';
	end;

	if FtpUpload.Connected then
	begin
		try
			FtpUpload.ChangeDir(FtpConnection.RemoteDir);
		except
			Result	:=	False;
			error	:=	'Cannot change remote directory';//SysErrorMessage(GetLastError);
		end;

		FtpUpload.Disconnect;

	end
	else
		Result	:=	False;

end;

procedure TF_Main.DeleteFilesAfterFtpUpload;
var
  i: Integer;
begin
	for i := 0 to FtpUploadList.Count - 1 do
		DeleteFile(FtpUploadList[i]);
end;

procedure TF_Main.UploadtoFTP1Click(Sender: TObject);
begin
	if FtpConnection.Hostname <> '' then
	begin
		if FtpUploadList.Count > 0 then
		begin
			AddLogMessage('Uploading files with ftp ...');

			if UploadtoFTP then
			begin
				ShowMessage(GetTxt( 1, 63, 'Upload ok'));
				if DeleteAfterFtpUpload then
					DeleteFilesAfterFtpUpload();
				FtpUploadList.Clear;	//	Start fresh after upload
				AddLogMessage(GetTxt( 1, 63, 'Upload ok'));
			end
			else
				ShowMessage(GetTxt( 1, 64, 'Upload failed'))
		end
		else
			ShowMessage(GetTxt( 1, 65, 'Nothing to upload. Queue is empty'))
	end
	else
		ShowMessage(GetTxt( 1, 66, 'No FTP connection data found. Check settings'))
end;

procedure TF_Main.CheckforUpdate1Click(Sender: TObject);
begin
	CheckForUpdates(False);
end;

procedure TF_Main.CheckForUpdates(AQuiet	:	Boolean);
var
	s,
	WebString: string;
	i	:	Integer;
	MyChild,
	MyChild2	:	IXMLNode;
begin
	try
		WebString	:= F_Update.IdHTTP_Updater.Get('http://www.rakekniven.de/sites/rakekniven.de/files/mp3toolboxupdate.xml');

		//	Debug
		//		WebString	:= IdHTTP_Updater.Get('http://192.168.178.201/mp3toolboxupdate.xml');
	except
	end;

	if WebString <> '' then
	begin
		//
		XMLDocumentUpdate.LoadFromXML(WebString);

		MyChild	:=	XMLDocumentUpdate.DocumentElement;//.ChildNodes[i];

		s	:=	MyChild.NodeName;

		if MyChild.Attributes['id'] = 'mp3toolbox' then
		begin
			F_Update.LatestVersion		:=	MyChild.ChildValues['Version'];
			F_Update.InstalledVersion	:=	get_version;
			F_Update.ReleaseDate			:=	MyChild.ChildValues['ReleaseDate'];
			F_Update.DownloadUrl			:=	MyChild.ChildValues['DownloadUrl'];
			F_Update.ChangelogUrl			:=	MyChild.ChildValues['ChangelogUrl'];

			MyChild2	:=	MyChild.ChildNodes['ReleaseNotes'];

			for i := 1 to MyChild2.ChildNodes.Count do
				F_Update.ReleaseNotes.Add(MyChild2.ChildValues['Note' + IntToStr(i)]);
		end;


		if Version1IsBiggerThanVersion2(F_Update.LatestVersion, F_Update.InstalledVersion) then
			F_Update.ShowModal
		else
		begin
			AddLogMessage(GetTxt(1, 86, 'No update found. You are using already the latest version.'));

			if not AQuiet then
				ShowMessage(GetTxt(1, 86, 'No update found. You are using already the latest version.'));
		end;

	end
	else
	begin
		AddLogMessage(GetTxt(1, 85, 'Up-to-date check failed. Could not connect to server.'));
		if not AQuiet then
			ShowMessage(GetTxt(1, 85, 'Up-to-date check failed. Could not connect to server.'));
	end;
end;

procedure TF_Main.AddLogMessage(AMessage : String);
begin
	LogList.Add(AMessage);
	LogListBox.Items.Add(AMessage);
	StatusBar.Panels[0].Text	:=	LogList[LogList.Count - 1];
	Application.ProcessMessages;
end;

end.
