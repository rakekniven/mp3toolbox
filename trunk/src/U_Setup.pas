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

unit U_Setup;

interface

uses
	SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
	Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, IniFiles, fldbrowsUnicode,
  Grids, ValEdit;

type
  TF_Setup = class(TForm)
    Setup_Book: TPageControl;
    Allgemein: TTabSheet;
    Pathes_GB: TGroupBox;
    HTML_File_Dialog_Btn: TSpeedButton;
    TXT_File_Dialog_Btn: TSpeedButton;
		TXT_File_Output_Lab: TLabel;
    HTML_File_Output_Lab: TLabel;
    TXT_File_Output_Edit: TEdit;
    HTML_File_Output_Edit: TEdit;
    Language_GB: TGroupBox;
    Language_CB: TComboBox;
		MP3List: TTabSheet;
    MP3List_Template_GB: TGroupBox;
    MP3List_Template_File_Dialog_Btn: TSpeedButton;
    MP3List_Multi_Template_File_Dialog_Btn: TSpeedButton;
    MP3List_Template_File_Lab: TLabel;
    MP3List_Multi_Template_File_Lab: TLabel;
    MP3List_Template_File_Edit: TEdit;
    MP3List_Multi_Template_File_Edit: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Album_Liste: TTabSheet;
    CDList_Template_GB: TGroupBox;
    Debug_Dev: TTabSheet;
    Store_And_Close_Btn: TBitBtn;
    Pacman_CheckBox: TCheckBox;
    MP3List_Open_Template_File_Dialog: TOpenDialog;
    MP3List_Multi_Open_Template_File_Dialog: TOpenDialog;
    mp3list_filename_Edit: TEdit;
    Lab_File_Ext: TLabel;
    mp3list_file_ending_Edit: TEdit;
    MP3List_ZIP_txt_CheckBox: TCheckBox;
    MP3List_CLear_TXT_files_after_zip_CB: TCheckBox;
    CDList_ZIP_txt_CheckBox: TCheckBox;
		CDList_CLear_TXT_files_after_zip_CB: TCheckBox;
    MP3List_ZIP_html_CheckBox: TCheckBox;
    MP3List_CLear_HTML_files_after_zip_CB: TCheckBox;
    CDList_ZIP_html_CheckBox: TCheckBox;
    CDList_CLear_HTML_files_after_zip_CB: TCheckBox;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Lab_File_Prefix: TLabel;
    CB_TXT_Encoding: TComboBox;
    Lab_Enc: TLabel;
    Label_OutputFormat: TLabel;
    Edit_Output_Format: TEdit;
    ValueListEditor_SeachAndReplace: TValueListEditor;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TXT_File_Output_EditChange(Sender: TObject);
    procedure HTML_File_Output_EditChange(Sender: TObject);
    procedure Language_CBChange(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure MP3List_Template_File_EditExit(Sender: TObject);
    procedure MP3List_Multi_Template_File_EditExit(Sender: TObject);
    procedure MP3List_Template_File_Dialog_BtnClick(Sender: TObject);
    procedure MP3List_Multi_Template_File_Dialog_BtnClick(Sender: TObject);
    procedure Pacman_CheckBoxClick(Sender: TObject);
    procedure Store_And_Close_BtnClick(Sender: TObject);
    procedure TXT_File_Dialog_BtnClick(Sender: TObject);
    procedure HTML_File_Dialog_BtnClick(Sender: TObject);
    procedure init_text(Sender: TObject);
    procedure MP3List_ZIP_txt_CheckBoxClick(Sender: TObject);
    procedure MP3List_ZIP_html_CheckBoxClick(Sender: TObject);
    procedure mp3list_filename_EditExit(Sender: TObject);
    procedure mp3list_file_ending_EditExit(Sender: TObject);
    procedure MP3List_CLear_TXT_files_after_zip_CBClick(Sender: TObject);
    procedure MP3List_CLear_HTML_files_after_zip_CBClick(Sender: TObject);
    procedure CDList_ZIP_txt_CheckBoxClick(Sender: TObject);
    procedure CDList_ZIP_html_CheckBoxClick(Sender: TObject);
    procedure CDList_CLear_HTML_files_after_zip_CBClick(Sender: TObject);
    procedure CDList_CLear_TXT_files_after_zip_CBClick(Sender: TObject);
    procedure CB_TXT_EncodingChange(Sender: TObject);
    procedure Edit_Output_FormatChange(Sender: TObject);
  private
    { Private-Deklarationen }
  public
		{ Public-Deklarationen }
  end;

var
  F_Setup: TF_Setup;

const
	SELDIRHELP = 1000;

implementation

uses
  U_Main,
  U_Language;

{$R *.dfm}

{--- Formular erzeugen --------------------------------------------------------}
procedure TF_Setup.FormCreate(Sender: TObject);
begin
	//
end;

{--- Formular anzeigen --------------------------------------------------------}
procedure TF_Setup.FormShow(Sender: TObject);
begin
  Setup_Book.ActivePage	:=	Allgemein;

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
	  Pacman_CheckBox.Checked	:=	True
  else
	  Pacman_CheckBox.Checked	:=	False;

  {set values of editfields}
	TXT_File_Output_Edit.Text	 						:=	text_files_output_path;
  HTML_File_Output_Edit.Text						:=	html_files_output_path;
  MP3List_Template_File_Edit.Text				:=  mp3list_single_template_file;
  MP3List_Multi_Template_File_Edit.Text	:=  mp3list_multi_template_file;
  mp3list_filename_Edit.Text	          :=  mp3list_html_file_name;
  mp3list_file_ending_Edit.Text	        :=  mp3list_html_file_ending;

  {Sprache}
  if gui_language = 'D' then
    Language_CB.ItemIndex				:=	0;
  if gui_language = 'GB' then
    Language_CB.ItemIndex				:=	1;

  {GUI-Sprache umschalten.}
  init_text(Sender);

	{}
	if mp3list_text_files_zip then
	  MP3List_ZIP_txt_CheckBox.Checked	:=	True
  else
	  MP3List_ZIP_txt_CheckBox.Checked	:=	False;

	{}
	if mp3list_html_files_zip then
		MP3List_ZIP_html_CheckBox.Checked	:=	True
	else
		MP3List_ZIP_html_CheckBox.Checked	:=	False;

	{}
	if mp3list_text_files_delete_after_zip then
		MP3List_CLear_TXT_files_after_zip_CB.Checked	:=	True
	else
		MP3List_CLear_TXT_files_after_zip_CB.Checked	:=	False;

	{}
	if mp3list_html_files_delete_after_zip then
		MP3List_CLear_HTML_files_after_zip_CB.Checked	:=	True
	else
		MP3List_CLear_HTML_files_after_zip_CB.Checked	:=	False;

	CB_TXT_Encoding.ItemIndex	:=	mp3list_text_file_encoding;

	{}
	if cdlist_text_files_zip then
	  cdlist_ZIP_txt_CheckBox.Checked	:=	True
  else
	  cdlist_ZIP_txt_CheckBox.Checked	:=	False;

	{}
  if cdlist_html_files_zip then
	  cdlist_ZIP_html_CheckBox.Checked	:=	True
  else
	  cdlist_ZIP_html_CheckBox.Checked	:=	False;

	{}
  if cdlist_text_files_delete_after_zip then
	  cdlist_CLear_TXT_files_after_zip_CB.Checked	:=	True
  else
	  cdlist_CLear_TXT_files_after_zip_CB.Checked	:=	False;

	{}
  if cdlist_html_files_delete_after_zip then
	  cdlist_CLear_HTML_files_after_zip_CB.Checked	:=	True
  else
	  cdlist_CLear_HTML_files_after_zip_CB.Checked	:=	False;
end;

{--- Wenn Pfad zu TXT-Fileausgabe verändert wird. ------------------------------}
procedure TF_Setup.TXT_File_Output_EditChange(Sender: TObject);
begin
	text_files_output_path	:=  TXT_File_Output_Edit.Text;
end;

{--- Wenn Pfad zu HTML-Ausgabe verändert wird. --------------------------------}
procedure TF_Setup.HTML_File_Output_EditChange(Sender: TObject);
begin
	html_files_output_path	:=  HTML_File_Output_Edit.Text;
end;


{--- if language is changed ---------------------------------------------------}
procedure TF_Setup.Language_CBChange(Sender: TObject);
begin
  if Language_CB.ItemIndex	=	0 then
  	gui_language := 'D' ;
 	if Language_CB.ItemIndex	=	1 then
    gui_language := 'GB' ;

  {GUI-Sprache umschalten.}
  Set_Language(gui_language);
  init_text(Sender);
end;

{--- MP3List : Eine Seite oder je eine Site pro Buchstabe ---------------------}
procedure TF_Setup.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked then
  	mp3list_html_multi_output	:=	0
  else
  	mp3list_html_multi_output	:=	1;
end;

{--- Eine Seite oder je eine Site pro Buchstabe -------------------------------}
procedure TF_Setup.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked then
		mp3list_html_multi_output	:=	0
	else
  	mp3list_html_multi_output	:=	1;
end;

{--- MP3List : When leaving the templatefile editbox. -------------------------}
procedure TF_Setup.MP3List_Template_File_EditExit(Sender: TObject);
begin
  mp3list_single_template_file  :=  MP3List_Template_File_Edit.Text;
end;

{--- MP3List : When leaving the multi templatefile editbox. -------------------}
procedure TF_Setup.MP3List_Multi_Template_File_EditExit(Sender: TObject);
begin
  mp3list_multi_template_file  	:=  MP3List_Multi_Template_File_Edit.Text;
end;

{--- MP3List : When leaving the filename editbox. -----------------------------}
procedure TF_Setup.mp3list_filename_EditExit(Sender: TObject);
begin
  mp3list_html_file_name      	:=  mp3list_filename_Edit.Text;
end;

{--- MP3List : When leaving the file ending editbox. --------------------------}
procedure TF_Setup.mp3list_file_ending_EditExit(Sender: TObject);
begin
  mp3list_html_file_ending  	  :=  mp3list_file_ending_Edit.Text;
end;

{--- MP3List : Choose a single letter templatefile. ---------------------------}
procedure TF_Setup.MP3List_Template_File_Dialog_BtnClick(Sender: TObject);
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

{--- MP3List : Choose a multi letter templatefile. ----------------------------}
procedure TF_Setup.MP3List_Multi_Template_File_Dialog_BtnClick(
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

procedure TF_Setup.Edit_Output_FormatChange(Sender: TObject);
begin
	mp3list_html_output_format	:=  Edit_Output_Format.Text;
end;

{--- Pacman - Adjustment Visible ? --------------------------------------------}
procedure TF_Setup.Pacman_CheckBoxClick(Sender: TObject);
begin
	if Pacman_CheckBox.Checked  =  True then
  begin
		pacman_adjustment_visible    :=  True;
    F_Main.Pacman_Panel.Visible  :=  True
  end
  else
  begin
    pacman_adjustment_visible    :=  False;
    F_Main.Pacman_Panel.Visible  :=  False;
  end;
end;


{--- Store all settings -------------------------------------------------------}
procedure TF_Setup.Store_And_Close_BtnClick(Sender: TObject);
var
  all_entries_ok  : Boolean;
	Ini             : TIniFile;
begin
	all_entries_ok  :=  True;

  if all_entries_ok then
  begin
    Ini := TIniFile.Create(ini_file_name);

    Ini.WriteString ('GENERAL', 'gui_language', 	            gui_language);
 	  Ini.WriteString ('GENERAL', 'textdateien', 		            text_files_output_path);
 	  Ini.WriteString ('GENERAL', 'htmldateien', 		            html_files_output_path);

    Ini.WriteString ('MP3LIST', 'single_template',            mp3list_single_template_file);
		Ini.WriteString ('MP3LIST', 'multi_template',             mp3list_multi_template_file);
		Ini.WriteInteger('MP3LIST', 'multi_output', 	            mp3list_html_multi_output);
		Ini.WriteString ('MP3LIST', 'mp3list_html_file_name', 	  mp3list_html_file_name);
		Ini.WriteString ('MP3LIST', 'mp3list_html_file_ending',   mp3list_html_file_ending);
		Ini.WriteBool   ('MP3LIST', 'zip_text_files',             mp3list_text_files_zip);
		Ini.WriteBool   ('MP3LIST', 'zip_html_files',             mp3list_html_files_zip);
		Ini.WriteBool   ('MP3LIST', 'text_files_delete_after_zip',mp3list_text_files_delete_after_zip);
		Ini.WriteBool   ('MP3LIST', 'html_files_delete_after_zip',mp3list_html_files_delete_after_zip);
		Ini.WriteInteger('MP3LIST', 'text_file_encoding',    			mp3list_text_file_encoding);
		Ini.WriteString ('MP3LIST', 'output_format',						  mp3list_html_output_format);

		Ini.WriteBool   ('CDLIST',  'zip_text_files',             cdlist_text_files_zip);
		Ini.WriteBool   ('CDLIST',  'zip_html_files',             cdlist_html_files_zip);
		Ini.WriteBool   ('CDLIST',  'text_files_delete_after_zip',cdlist_text_files_delete_after_zip);
		Ini.WriteBool   ('CDLIST',  'html_files_delete_after_zip',cdlist_html_files_delete_after_zip);

    Ini.WriteBool   ('DEVELOP', 'PACMAN_ADJUSTMENT',          pacman_adjustment_visible);

	  Ini.Free;

    F_Main.Load_From_Button.Enabled	:=	True;
	  Close;
  end;

end;

{--- Choose the place where to store the textfiles ----------------------------}
procedure TF_Setup.TXT_File_Dialog_BtnClick(Sender: TObject);
var
	sOutDir	:	String;
	fb      : TFolderBrowser;
begin
	fb := TFolderBrowser.Create(Application.Handle, 'Where to store text files');
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

	{Nur wenn Ordner ausgewählt wurde.}
	if sOutDir	<>	'' then
	begin
		text_files_output_path	    :=	sOutDir;
		TXT_File_Output_Edit.Text		:=  sOutDir;
	end;
end;

{--- Choose the place where to store the webfiles -----------------------------}
procedure TF_Setup.HTML_File_Dialog_BtnClick(Sender: TObject);
var
	sOutDir	:	String;
	fb      : TFolderBrowser;
begin
	fb := TFolderBrowser.Create(Application.Handle, 'Where to store web files');
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


	{Nur wenn Ordner ausgewählt wurde.}
	if sOutDir	<>	'' then
  begin
	  html_files_output_path	    :=	sOutDir;
  	HTML_File_Output_Edit.Text	:=  sOutDir;
  end;
end;

{--- set captions to objects --------------------------------------------------}
procedure TF_Setup.init_text(Sender: TObject);
begin
  {General}
	Allgemein.Caption                               :=  GetTxt( 2,  1, 'Allgemein');
	MP3List.Caption                                 :=  GetTxt( 2,  2, 'MP3-Liste');
  Album_Liste.Caption                             :=  GetTxt( 2,  3, 'Ascii-Liste');
  Debug_Dev.Caption                               :=  GetTxt( 2,  4, 'Debug und Zusatz');
  TXT_File_Output_Lab.Caption                     :=  GetTxt( 2,  5, 'Wo sollen die Textdateien gespeichert werden :');
  HTML_File_Output_Lab.Caption                    :=  GetTxt( 2,  6, 'Wo sollen die Webseiten gespeichert werden :');
  Store_And_Close_Btn.Caption                     :=  GetTxt( 2,  7, '&Sichern und Schliessen');
	F_Setup.Caption                                 :=  GetTxt( 2, 10, 'Setup');
	Language_GB.Caption                             :=  GetTxt( 2, 25, 'Sprache / Language ');

	Label_OutputFormat.Caption 											:=	GetTxt( 2, 31, 'Ausgabeformat');

	ValueListEditor_SeachAndReplace.TitleCaptions[0]	:=	GetTxt( 2, 29, 'Suchen');
	ValueListEditor_SeachAndReplace.TitleCaptions[1]	:=	GetTxt( 2, 30, 'Ersetzen');

(*
	First_Start_Memo.Clear;
	First_Start_Memo.Lines.Add                         (GetTxt( 2,  8, 'Beim ersten Programmstart sollten noch'));
	First_Start_Memo.Lines.Add                         (GetTxt( 2,  9, 'verschiedene Einstellungen gemacht werden.'));
	First_Start_Memo.Lines.Add                         ('');
	First_Start_Memo.Lines.Add                         (GetTxt( 2, 11, 'Du kannst die Standardeinstellungen'));
	First_Start_Memo.Lines.Add                         (GetTxt( 2, 12, 'akzeptieren und auf "Sichern und Schliessen"'));
	First_Start_Memo.Lines.Add                         (GetTxt( 2, 13, 'klicken.'));
*)

  {MP3List}
  RadioButton1.Caption						                :=  GetTxt( 2, 14, 'Eine Seite (Groesse beachten)');
  RadioButton2.Caption						                :=  GetTxt( 2, 15, 'pro Buchstaben eine Seite');
  MP3List_Template_File_Lab.Caption               :=  GetTxt( 2, 16, 'Welche Vorlage soll benutzt werden ?');
  MP3List_Multi_Template_File_Lab.Caption         :=  GetTxt( 2, 17, 'Welche Vorlage soll benutzt werden ?');
  MP3List_ZIP_txt_CheckBox.Caption                :=  GetTxt( 2, 21, 'ZIP die Textdateien');
  MP3List_ZIP_html_CheckBox.Caption               :=  GetTxt( 2, 22, 'ZIP die HTML-Dateien');
  MP3List_CLear_TXT_files_after_zip_CB.Caption    :=  GetTxt( 2, 23, 'Lösche Textdateien nach ZIPPEN');
	MP3List_CLear_HTML_files_after_zip_CB.Caption   :=  GetTxt( 2, 24, 'Lösche HTML-Dateien nach ZIPPEN');
	Lab_Enc.Caption                                 :=  GetTxt( 2, 26, 'Output encoding');
	Lab_File_Prefix.Caption                         :=  GetTxt( 2, 27, 'Dateiname');
	Lab_File_Ext.Caption                            :=  GetTxt( 2, 28, 'Dateiendung');

  {CDList}
	CDList_ZIP_txt_CheckBox.Caption                 :=  GetTxt( 2, 21, 'ZIP die Textdateien');
  CDList_ZIP_html_CheckBox.Caption                :=  GetTxt( 2, 22, 'ZIP die HTML-Dateien');
	CDList_CLear_TXT_files_after_zip_CB.Caption     :=  GetTxt( 2, 23, 'Lösche Textdateien nach ZIPPEN');
  CDList_CLear_HTML_files_after_zip_CB.Caption    :=  GetTxt( 2, 24, 'Lösche HTML-Dateien nach ZIPPEN');

  {Debug}
	Pacman_CheckBox.Caption                         :=  GetTxt( 2, 20, 'Pacman einstellen');
end;

{--- MP3List : zip txt files --------------------------------------------------}
procedure TF_Setup.MP3List_ZIP_txt_CheckBoxClick(Sender: TObject);
begin
  if mp3list_ZIP_txt_CheckBox.Checked then
		mp3list_text_files_zip    :=  True
  else
    mp3list_text_files_zip    :=  False;
end;

{--- MP3List : zip html files -------------------------------------------------}
procedure TF_Setup.MP3List_ZIP_html_CheckBoxClick(Sender: TObject);
begin
  if mp3list_ZIP_html_CheckBox.Checked then
    mp3list_html_files_zip    :=  True
  else
    mp3list_html_files_zip    :=  False;
end;

{--- MP3List : Delete TXT files after zip -------------------------------------}
procedure TF_Setup.MP3List_CLear_TXT_files_after_zip_CBClick(Sender: TObject);
begin
  if mp3list_CLear_TXT_files_after_zip_CB.Checked then
    mp3list_text_files_delete_after_zip    :=  True
  else
    mp3list_text_files_delete_after_zip    :=  False;
end;

{--- MP3List : Delete html files after zip ------------------------------------}
procedure TF_Setup.MP3List_CLear_HTML_files_after_zip_CBClick(Sender: TObject);
begin
  if mp3list_CLear_HTML_files_after_zip_CB.Checked then
    mp3list_html_files_delete_after_zip    :=  True
	else
    mp3list_html_files_delete_after_zip    :=  False;
end;

{--- CDList : zip txt files ---------------------------------------------------}
procedure TF_Setup.CDList_ZIP_txt_CheckBoxClick(Sender: TObject);
begin
  if CDList_ZIP_txt_CheckBox.Checked then
    cdlist_text_files_zip    :=  True
  else
    cdlist_text_files_zip    :=  False;
end;

procedure TF_Setup.CB_TXT_EncodingChange(Sender: TObject);
begin
	mp3list_text_file_encoding	:=	CB_TXT_Encoding.ItemIndex;
end;

{--- CDList : Delete TXT files after zip --------------------------------------}
procedure TF_Setup.CDList_CLear_TXT_files_after_zip_CBClick(
	Sender: TObject);
begin
	if CDList_CLear_TXT_files_after_zip_CB.Checked then
		cdlist_text_files_delete_after_zip    :=  True
	else
		cdlist_text_files_delete_after_zip    :=  False;
end;

{--- CDList : zip html files --------------------------------------------------}
procedure TF_Setup.CDList_ZIP_html_CheckBoxClick(Sender: TObject);
begin
  if CDList_ZIP_html_CheckBox.Checked then
    cdlist_html_files_zip    :=  True
  else
    cdlist_html_files_zip    :=  False;
end;

{--- MP3List : Delete HTML files after zip ------------------------------------}
procedure TF_Setup.CDList_CLear_HTML_files_after_zip_CBClick(
	Sender: TObject);
begin
	if CDList_CLear_HTML_files_after_zip_CB.Checked then
		cdlist_html_files_delete_after_zip    :=  True
	else
		cdlist_html_files_delete_after_zip    :=  False;
end;

end.
