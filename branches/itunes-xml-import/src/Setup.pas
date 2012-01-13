unit Setup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ComCtrls, QDialogs, QStdCtrls, QExtCtrls,
  QControls, QButtons, QComCtrls;

type
  TSetup_F = class(TForm)

    Store_And_Close_Btn         			: TBitBtn;
    MP3List_Open_Template_File_Dialog	: TOpenDialog;
    CDList_Open_Template_File_Dialog	: TOpenDialog;

    Setup_Book                        : TPageControl;
    Allgemein                         : TTabSheet;
    MP3List										      	: TTabSheet;
    Debug_Dev									      	: TTabSheet;
    Album_Liste								      	: TTabSheet;

    Pathes_GB                         : TGroupBox;
    Language_GB                       : TGroupBox;
    MP3List_Template_GB				      	: TGroupBox;
    CDList_Template_GB				      	: TGroupBox;

    TXT_File_Output_Lab               : TLabel;
    HTML_File_Output_Lab              : TLabel;
    MP3List_Template_File_Lab	      	: TLabel;
    CDList_Template_File_Lab	      	: TLabel;

    HTML_File_Dialog_Btn              : TSpeedButton;
    TXT_File_Dialog_Btn               : TSpeedButton;
    MP3List_Template_File_Dialog_Btn	: TSpeedButton;
    CDList_Template_File_Dialog_Btn		: TSpeedButton;

    TXT_File_Output_Edit              : TEdit;
    HTML_File_Output_Edit             : TEdit;
    MP3List_Template_File_Edit      	: TEdit;
    CDList_Template_File_Edit	      	: TEdit;

    Language_CB                       : TComboBox;
    Pacman_CB									      	: TCheckBox;
    First_Start_Panel									: TPanel;
    First_Start_Memo: TMemo;
    MP3List_Multi_Template_File_Lab		: TLabel;
    MP3List_Multi_Template_File_Edit	: TEdit;
    MP3List_Multi_Template_File_Dialog_Btn	: TSpeedButton;
    MP3List_Multi_Open_Template_File_Dialog	: TOpenDialog;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;

    procedure FormCreate(Sender: TObject);
    procedure TXT_File_Output_EditChange(Sender: TObject);
    procedure HTML_File_Output_EditChange(Sender: TObject);
    procedure Store_And_Close_BtnClick(Sender: TObject);
    procedure TXT_File_Dialog_BtnClick(Sender: TObject);
    procedure HTML_File_Dialog_BtnClick(Sender: TObject);
    procedure MP3List_Template_File_Dialog_BtnClick(Sender: TObject);
    procedure MP3List_Template_File_EditExit(Sender: TObject);
    procedure Language_CBChange(Sender: TObject);
    procedure CDList_Template_File_Dialog_BtnClick(Sender: TObject);
    procedure CDList_Template_File_EditExit(Sender: TObject);
    procedure Pacman_CBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MP3List_Multi_Template_File_Dialog_BtnClick(Sender: TObject);
    procedure MP3List_Multi_Template_File_EditExit(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Setup_F                  : TSetup_F;

implementation

uses
  inifiles,
  Main,
  Info,
  FileCtrl,
  U_gui_language,
  lib1,
  win_version;

var
  Ini										      : TIniFile;												//	Ini-Variable

{$R *.DFM}

{--- Formular erzeugen --------------------------------------------------------}
procedure TSetup_F.FormCreate(Sender: TObject);
begin
	//
end;

{--- Formular anzeigen --------------------------------------------------------}
procedure TSetup_F.FormShow(Sender: TObject);
begin
  {set radiobuttons}
  if mp3list_html_multi_output = 0 then
  begin
  	RadioButton1.Checked	:=	True;
  	RadioButton2.Checked	:=	False;
  end
  else
  begin
  	RadioButton1.Checked	:=	False;
  	RadioButton2.Checked	:=	True;
  end;

	{set pacman-checkbox}
  if pacman_adjustment_visible then
	  Pacman_CB.Checked	:=	True
  else
	  Pacman_CB.Checked	:=	False;

  {set values of editfields}
  TXT_File_Output_Edit.Text	 						:=	text_files_output_path;
  HTML_File_Output_Edit.Text						:=	html_files_output_path;
  MP3List_Template_File_Edit.Text				:=  mp3list_single_template_file;
  MP3List_Multi_Template_File_Edit.Text	:=  mp3list_multi_template_file;
  CDList_Template_File_Edit.Text				:=  cdlist_template_file_dir_and_name;

  {Sprache}
  if gui_language = 'D' then
    Language_CB.ItemIndex				:=	0;
  if gui_language = 'GB' then
    Language_CB.ItemIndex				:=	1;

  {GUI-Sprache umschalten.}
  gui_language_call;
end;

{--- Wenn Pfad zu TXT-Fileausgabe verändert wird. ------------------------------}
procedure TSetup_F.TXT_File_Output_EditChange(Sender: TObject);
begin
	text_files_output_path	:=  TXT_File_Output_Edit.Text;
end;

{--- Wenn Pfad zu HTML-Ausgabe verändert wird. --------------------------------}
procedure TSetup_F.HTML_File_Output_EditChange(Sender: TObject);
begin
	html_files_output_path	:=  HTML_File_Output_Edit.Text;
end;

{--- Variablen speichern und schliessen ---------------------------------------}
procedure TSetup_F.Store_And_Close_BtnClick(Sender: TObject);
var
  all_entries_ok  : Bool;
begin
  all_entries_ok  :=  True;

  if all_entries_ok then
  begin
    Ini := TIniFile.Create(SlashSep(win_dir, ini_file_name));

    Ini.WriteString ('GENERAL', 'gui_language', 	gui_language);
 	  Ini.WriteString ('GENERAL', 'textdateien', 		text_files_output_path);
 	  Ini.WriteString ('GENERAL', 'htmldateien', 		html_files_output_path);

    Ini.WriteString ('MP3LIST', 'single_template',mp3list_single_template_file);
    Ini.WriteString ('MP3LIST', 'multi_template', mp3list_multi_template_file);
 	  Ini.WriteInteger('MP3LIST', 'multi_output', 	mp3list_html_multi_output);

    Ini.WriteString ('CDLIST',  'template', 			cdlist_template_file_dir_and_name);

    Ini.WriteBool   ('DEVELOP',  'PACMAN_ADJUSTMENT', pacman_adjustment_visible);

	  Ini.Free;

    Form1.Load_From_Button.Enabled	:=	True;
	  Close;
  end;
end;

{--- Dialog zur Auswahl des Pfades für TXT-Dateien ----------------------------}
procedure TSetup_F.TXT_File_Dialog_BtnClick(Sender: TObject);
var	sOutDir	:	String;
begin
	SelectDirectory(string8, '', sOutDir);
	{Nur wenn Ordner ausgewählt wurde.}
  if sOutDir	<>	'' then
  begin
	  text_files_output_path	    :=	sOutDir;
  	TXT_File_Output_Edit.Text		:=  sOutDir;
  end;
end;

{--- Dialog zur Auswahl des Pfades für HTML-Dateien ---------------------------}
procedure TSetup_F.HTML_File_Dialog_BtnClick(Sender: TObject);
var	sOutDir	:	String;
begin
	SelectDirectory(string9, '', sOutDir);
	{Nur wenn Ordner ausgewählt wurde.}
	if sOutDir	<>	'' then
  begin
	  html_files_output_path	    :=	sOutDir;
  	HTML_File_Output_Edit.Text	:=  sOutDir;
  end;
end;

{--- Dialog zur Auswahl der Single Vorlage ------------------------------------}
procedure TSetup_F.MP3List_Template_File_Dialog_BtnClick(Sender: TObject);
begin
  if MP3List_Open_Template_File_Dialog.Execute = True then
  begin
    MP3List_Template_File_Edit.Text 		:=  MP3List_Open_Template_File_Dialog.FileName;
    mp3list_single_template_file  			:=  MP3List_Template_File_Edit.Text;
  end
  else
  begin
    MP3List_Template_File_Edit.Text 		:=  '';
    mp3list_single_template_file			  :=  MP3List_Template_File_Edit.Text;
  end;
end;

{--- Dialog zur Auswahl der Multi Vorlage ------------------------------------}
procedure TSetup_F.MP3List_Multi_Template_File_Dialog_BtnClick(
  Sender: TObject);
begin
  if MP3List_Multi_Open_Template_File_Dialog.Execute = True then
  begin
    MP3List_Multi_Template_File_Edit.Text	:=  MP3List_Multi_Open_Template_File_Dialog.FileName;
    mp3list_multi_template_file  					:=  MP3List_Multi_Template_File_Edit.Text;
  end
  else
  begin
    MP3List_Multi_Template_File_Edit.Text :=  '';
    mp3list_multi_template_file			  		:=  MP3List_Multi_Template_File_Edit.Text;
  end;
end;

{--- Wenn Vorlage-Fileeditbox verlassen wird. ---------------------------------}
procedure TSetup_F.MP3List_Template_File_EditExit(Sender: TObject);
begin
  mp3list_single_template_file  :=  MP3List_Template_File_Edit.Text;
end;

{--- Wenn Vorlage-Fileeditbox verlassen wird. ---------------------------------}
procedure TSetup_F.MP3List_Multi_Template_File_EditExit(Sender: TObject);
begin
  mp3list_multi_template_file  	:=  MP3List_Multi_Template_File_Edit.Text;
end;

{--- Wenn Sprache gewechselt wird. --------------------------------------------}
procedure TSetup_F.Language_CBChange(Sender: TObject);
begin
  if Language_CB.ItemIndex	=	0 then
  	gui_language := 'D' ;
 	if Language_CB.ItemIndex	=	1 then
    gui_language := 'GB' ;

  {GUI-Sprache umschalten.}
  gui_language_call;

end;

{--- CDList : Dialog to choose the template -----------------------------------}
procedure TSetup_F.CDList_Template_File_Dialog_BtnClick(Sender: TObject);
begin
  if CDList_Open_Template_File_Dialog.Execute = True then
  begin
    CDList_Template_File_Edit.Text 		:=  CDList_Open_Template_File_Dialog.FileName;
    cdlist_template_file_dir_and_name :=  CDList_Template_File_Edit.Text;
  end
  else
  begin
    CDList_Template_File_Edit.Text     :=  '';
    cdlist_template_file_dir_and_name  :=  CDList_Template_File_Edit.Text;
  end;
end;


{--- CDList : When template-Edit is leaving -----------------------------------}
procedure TSetup_F.CDList_Template_File_EditExit(Sender: TObject);
begin
  mp3list_single_template_file  :=  CDList_Template_File_Edit.Text;
end;

{--- Pacman - Adjustment Visible ? --------------------------------------------}
procedure TSetup_F.Pacman_CBClick(Sender: TObject);
begin
  if Pacman_CB.Checked  =  True then
  begin
    pacman_adjustment_visible   :=  True;
    Form1.Pacman_Panel.Visible  :=  True
  end
  else
  begin
    pacman_adjustment_visible   :=  False;
    Form1.Pacman_Panel.Visible  :=  False;
  end;
end;

{--- Eine Seite oder je eine Site pro Buchstabe -------------------------------}
procedure TSetup_F.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
  	mp3list_html_multi_output	:=	0
  else
  	mp3list_html_multi_output	:=	1;
end;

{--- Eine Seite oder je eine Site pro Buchstabe -------------------------------}
procedure TSetup_F.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked then
  	mp3list_html_multi_output	:=	0
  else
  	mp3list_html_multi_output	:=	1;
end;

end.
