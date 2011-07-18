object F_Setup: TF_Setup
  Left = 310
  Top = 343
  Width = 549
  Height = 430
  HorzScrollBar.Range = 545
  VertScrollBar.Range = 417
  ActiveControl = Setup_Book
  Caption = 'F_Setup'
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 84
  TextHeight = 13
  object Setup_Book: TPageControl
    Left = 8
    Top = 8
    Width = 537
    Height = 377
    ActivePage = MP3List
    TabOrder = 0
    object Allgemein: TTabSheet
      Caption = 'Allgemein'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Pathes_GB: TGroupBox
        Left = 8
        Top = 8
        Width = 513
        Height = 121
        TabOrder = 0
        object HTML_File_Dialog_Btn: TSpeedButton
          Left = 464
          Top = 80
          Width = 33
          Height = 22
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
            33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
            33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
            33003333333333333300}
          OnClick = HTML_File_Dialog_BtnClick
        end
        object TXT_File_Dialog_Btn: TSpeedButton
          Left = 464
          Top = 32
          Width = 33
          Height = 22
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
            33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
            33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
            33003333333333333300}
          OnClick = TXT_File_Dialog_BtnClick
        end
        object TXT_File_Output_Lab: TLabel
          Left = 8
          Top = 16
          Width = 229
          Height = 13
          Caption = 'Wo sollen die Textdateien gespeichert werden :'
        end
        object HTML_File_Output_Lab: TLabel
          Left = 8
          Top = 64
          Width = 222
          Height = 13
          Caption = 'Wo sollen die Webseiten gespeichert werden :'
        end
        object TXT_File_Output_Edit: TEdit
          Left = 8
          Top = 32
          Width = 441
          Height = 21
          TabOrder = 0
          OnChange = TXT_File_Output_EditChange
        end
        object HTML_File_Output_Edit: TEdit
          Left = 8
          Top = 80
          Width = 441
          Height = 21
          TabOrder = 1
          OnChange = HTML_File_Output_EditChange
        end
      end
      object Language_GB: TGroupBox
        Left = 8
        Top = 136
        Width = 161
        Height = 57
        Caption = ' Sprache / Language '
        TabOrder = 1
        object Language_CB: TComboBox
          Left = 8
          Top = 24
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 0
          OnChange = Language_CBChange
          Items.Strings = (
            'Deutsch'
            'English')
        end
      end
      object First_Start_Panel: TPanel
        Left = 176
        Top = 144
        Width = 345
        Height = 193
        TabOrder = 2
        Visible = False
        object First_Start_Memo: TMemo
          Left = 8
          Top = 8
          Width = 329
          Height = 177
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = 15
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          Lines.Strings = (
            'Beim ersten Programmstart sollten noch '
            'verschiedene Einstellungen gemacht werden.'
            ''
            'Du kannst die Standardeinstellungen '
            'akzeptieren und auf "Sichern und Schliessen" '
            'klicken.')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object MP3List: TTabSheet
      Caption = 'MP3-Liste'
      ImageIndex = 1
      object MP3List_Template_GB: TGroupBox
        Left = 8
        Top = 8
        Width = 513
        Height = 321
        TabOrder = 0
        object MP3List_Template_File_Dialog_Btn: TSpeedButton
          Left = 464
          Top = 52
          Width = 33
          Height = 22
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
            33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
            33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
            33003333333333333300}
          OnClick = MP3List_Template_File_Dialog_BtnClick
        end
        object MP3List_Multi_Template_File_Dialog_Btn: TSpeedButton
          Left = 464
          Top = 124
          Width = 33
          Height = 22
          Glyph.Data = {
            E6000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
            33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
            33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
            33003333333333333300}
          OnClick = MP3List_Multi_Template_File_Dialog_BtnClick
        end
        object MP3List_Template_File_Lab: TLabel
          Left = 8
          Top = 36
          Width = 181
          Height = 13
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object MP3List_Multi_Template_File_Lab: TLabel
          Left = 8
          Top = 108
          Width = 181
          Height = 13
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object Label1: TLabel
          Left = 288
          Top = 160
          Width = 51
          Height = 13
          Caption = 'Dateiname'
        end
        object Label2: TLabel
          Left = 288
          Top = 216
          Width = 61
          Height = 13
          Caption = 'Dateiendung'
        end
        object MP3List_Template_File_Edit: TEdit
          Left = 8
          Top = 52
          Width = 441
          Height = 21
          TabOrder = 0
          OnExit = MP3List_Template_File_EditExit
        end
        object MP3List_Multi_Template_File_Edit: TEdit
          Left = 8
          Top = 124
          Width = 441
          Height = 21
          TabOrder = 1
          OnExit = MP3List_Multi_Template_File_EditExit
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 16
          Width = 337
          Height = 17
          Caption = 'Eine Seite (Groesse beachten)'
          TabOrder = 2
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 88
          Width = 345
          Height = 17
          Caption = 'pro Buchstaben eine Seite'
          TabOrder = 3
          OnClick = RadioButton2Click
        end
        object mp3list_filename_Edit: TEdit
          Left = 288
          Top = 176
          Width = 161
          Height = 21
          TabOrder = 6
          Text = 'mp3list'
          OnExit = mp3list_filename_EditExit
        end
        object mp3list_file_ending_Edit: TEdit
          Left = 288
          Top = 232
          Width = 161
          Height = 21
          TabOrder = 9
          Text = '.html'
          OnExit = mp3list_file_ending_EditExit
        end
        object MP3List_ZIP_txt_CheckBox: TCheckBox
          Left = 8
          Top = 160
          Width = 145
          Height = 30
          Caption = 'ZIP die Textdateien'
          TabOrder = 4
          Visible = False
          OnClick = MP3List_ZIP_txt_CheckBoxClick
        end
        object MP3List_CLear_TXT_files_after_zip_CB: TCheckBox
          Left = 8
          Top = 184
          Width = 225
          Height = 30
          Caption = 'L'#246'sche Textdateien nach ZIPPEN'
          TabOrder = 5
          Visible = False
          OnClick = MP3List_CLear_TXT_files_after_zip_CBClick
        end
        object MP3List_ZIP_html_CheckBox: TCheckBox
          Left = 8
          Top = 208
          Width = 153
          Height = 30
          Caption = 'ZIP die HTML-Dateien'
          TabOrder = 7
          Visible = False
          OnClick = MP3List_ZIP_html_CheckBoxClick
        end
        object MP3List_CLear_HTML_files_after_zip_CB: TCheckBox
          Left = 8
          Top = 232
          Width = 257
          Height = 30
          Caption = 'L'#246'sche HTML-Dateien nach ZIPPEN'
          TabOrder = 8
          Visible = False
          OnClick = MP3List_CLear_HTML_files_after_zip_CBClick
        end
      end
    end
    object Album_Liste: TTabSheet
      Caption = 'Album-Liste'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CDList_Template_GB: TGroupBox
        Left = 8
        Top = 8
        Width = 513
        Height = 321
        TabOrder = 0
        object CDList_ZIP_txt_CheckBox: TCheckBox
          Left = 8
          Top = 160
          Width = 145
          Height = 30
          Caption = 'ZIP die Textdateien'
          TabOrder = 0
          OnClick = CDList_ZIP_txt_CheckBoxClick
        end
        object CDList_CLear_TXT_files_after_zip_CB: TCheckBox
          Left = 8
          Top = 184
          Width = 225
          Height = 30
          Caption = 'L'#246'sche Textdateien nach ZIPPEN'
          TabOrder = 1
          OnClick = CDList_CLear_TXT_files_after_zip_CBClick
        end
        object CDList_ZIP_html_CheckBox: TCheckBox
          Left = 8
          Top = 208
          Width = 153
          Height = 30
          Caption = 'ZIP die HTML-Dateien'
          TabOrder = 2
          OnClick = CDList_ZIP_html_CheckBoxClick
        end
        object CDList_CLear_HTML_files_after_zip_CB: TCheckBox
          Left = 8
          Top = 232
          Width = 257
          Height = 30
          Caption = 'L'#246'sche HTML-Dateien nach ZIPPEN'
          TabOrder = 3
          OnClick = CDList_CLear_HTML_files_after_zip_CBClick
        end
      end
    end
    object Debug_Dev: TTabSheet
      Caption = 'Debug and Dev.'
      ImageIndex = 2
      OnContextPopup = Debug_DevContextPopup
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Pacman_CheckBox: TCheckBox
        Left = 32
        Top = 24
        Width = 169
        Height = 30
        Caption = 'Pacman einstellen'
        TabOrder = 0
        OnClick = Pacman_CheckBoxClick
      end
    end
  end
  object Store_And_Close_Btn: TBitBtn
    Left = 368
    Top = 392
    Width = 177
    Height = 25
    Caption = '&Sichern und Schliessen'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFF303030
      B090908060606060606060606060606060606060606060606060606060606060
      60A06060703030400000606060A06060800000A06060A06060A06060B09090CF
      CFCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000800000606060800000
      800000A06060800000800000A06060DFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0800000800000800000606060800000800000A06060800000800000A06060DF
      DFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0800000800000800000606060800000
      800000903030A06060A06060B09090CFCFCFC0C0C0C0C0C0C0C0C0C0C0C0B090
      9080000080000080000060606080000080000080000080000080000080000080
      0000800000800000800000800000800000800000800000800000606060800000
      8000006000004000004000004000004000004000004000004000004000004000
      006000008000008000006060608000008000007F7F7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F800000800000606060800000
      8000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7F8000008000006060608000008000007F7F7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F800000800000606060800000
      8000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7F8000008000006060608000008000007F7F7FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F800000800000606060600000
      6000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7F800000800000606060400000AF6F6F3F7F7F7FFFFF7FFFFF7FFFFF7F
      FFFF7FFFFF7FFFFF7FFFFF7FFFFF7FFFFF3F7F7F800000800000FFFFFF800000
      800000007F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF007F7F800000800000FFFFFF20000040000000000000000000000000000000
      0000000000000000000000000000000000000000400000200000}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = Store_And_Close_BtnClick
  end
  object MP3List_Open_Template_File_Dialog: TOpenDialog
    FilterIndex = 0
    Left = 48
    Top = 328
  end
  object MP3List_Multi_Open_Template_File_Dialog: TOpenDialog
    FilterIndex = 0
    Left = 72
    Top = 328
  end
end
