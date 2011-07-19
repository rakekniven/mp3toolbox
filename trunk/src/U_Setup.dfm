object F_Setup: TF_Setup
  Left = 310
  Top = 343
  Width = 698
  Height = 567
  HorzScrollBar.Range = 671
  VertScrollBar.Range = 513
  ActiveControl = Setup_Book
  Caption = 'F_Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Setup_Book: TPageControl
    Left = 10
    Top = 10
    Width = 661
    Height = 464
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = MP3List
    TabOrder = 0
    object Allgemein: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Allgemein'
      object Pathes_GB: TGroupBox
        Left = 10
        Top = 10
        Width = 631
        Height = 149
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 0
        object HTML_File_Dialog_Btn: TSpeedButton
          Left = 571
          Top = 98
          Width = 41
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Left = 571
          Top = 39
          Width = 41
          Height = 27
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Left = 10
          Top = 20
          Width = 274
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Wo sollen die Textdateien gespeichert werden :'
        end
        object HTML_File_Output_Lab: TLabel
          Left = 10
          Top = 79
          Width = 267
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Wo sollen die Webseiten gespeichert werden :'
        end
        object TXT_File_Output_Edit: TEdit
          Left = 10
          Top = 39
          Width = 543
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
          OnChange = TXT_File_Output_EditChange
        end
        object HTML_File_Output_Edit: TEdit
          Left = 10
          Top = 98
          Width = 543
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 1
          OnChange = HTML_File_Output_EditChange
        end
      end
      object Language_GB: TGroupBox
        Left = 10
        Top = 167
        Width = 198
        Height = 71
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = ' Sprache / Language '
        TabOrder = 1
        object Language_CB: TComboBox
          Left = 10
          Top = 30
          Width = 178
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          TabOrder = 0
          OnChange = Language_CBChange
          Items.Strings = (
            'Deutsch'
            'English')
        end
      end
      object First_Start_Panel: TPanel
        Left = 217
        Top = 177
        Width = 424
        Height = 238
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 2
        Visible = False
        object First_Start_Memo: TMemo
          Left = 10
          Top = 10
          Width = 405
          Height = 218
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = 19
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
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'MP3-Liste'
      ImageIndex = 1
      object MP3List_Template_GB: TGroupBox
        Left = 10
        Top = 10
        Width = 631
        Height = 395
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 0
        object MP3List_Template_File_Dialog_Btn: TSpeedButton
          Left = 571
          Top = 64
          Width = 41
          Height = 27
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Left = 571
          Top = 153
          Width = 41
          Height = 27
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          Left = 10
          Top = 44
          Width = 219
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object MP3List_Multi_Template_File_Lab: TLabel
          Left = 10
          Top = 133
          Width = 219
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object Label1: TLabel
          Left = 354
          Top = 197
          Width = 61
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Dateiname'
        end
        object Label2: TLabel
          Left = 354
          Top = 266
          Width = 71
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Dateiendung'
        end
        object MP3List_Template_File_Edit: TEdit
          Left = 10
          Top = 64
          Width = 543
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
          OnExit = MP3List_Template_File_EditExit
        end
        object MP3List_Multi_Template_File_Edit: TEdit
          Left = 10
          Top = 153
          Width = 543
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 1
          OnExit = MP3List_Multi_Template_File_EditExit
        end
        object RadioButton1: TRadioButton
          Left = 10
          Top = 20
          Width = 415
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Eine Seite (Groesse beachten)'
          TabOrder = 2
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 10
          Top = 108
          Width = 424
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'pro Buchstaben eine Seite'
          TabOrder = 3
          OnClick = RadioButton2Click
        end
        object mp3list_filename_Edit: TEdit
          Left = 354
          Top = 217
          Width = 199
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 6
          Text = 'mp3list'
          OnExit = mp3list_filename_EditExit
        end
        object mp3list_file_ending_Edit: TEdit
          Left = 354
          Top = 286
          Width = 199
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 9
          Text = '.html'
          OnExit = mp3list_file_ending_EditExit
        end
        object MP3List_ZIP_txt_CheckBox: TCheckBox
          Left = 10
          Top = 197
          Width = 178
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'ZIP die Textdateien'
          TabOrder = 4
          Visible = False
          OnClick = MP3List_ZIP_txt_CheckBoxClick
        end
        object MP3List_CLear_TXT_files_after_zip_CB: TCheckBox
          Left = 10
          Top = 226
          Width = 277
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'L'#246'sche Textdateien nach ZIPPEN'
          TabOrder = 5
          Visible = False
          OnClick = MP3List_CLear_TXT_files_after_zip_CBClick
        end
        object MP3List_ZIP_html_CheckBox: TCheckBox
          Left = 10
          Top = 256
          Width = 188
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'ZIP die HTML-Dateien'
          TabOrder = 7
          Visible = False
          OnClick = MP3List_ZIP_html_CheckBoxClick
        end
        object MP3List_CLear_HTML_files_after_zip_CB: TCheckBox
          Left = 10
          Top = 286
          Width = 316
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'L'#246'sche HTML-Dateien nach ZIPPEN'
          TabOrder = 8
          Visible = False
          OnClick = MP3List_CLear_HTML_files_after_zip_CBClick
        end
      end
    end
    object Album_Liste: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Album-Liste'
      ImageIndex = 3
      object CDList_Template_GB: TGroupBox
        Left = 10
        Top = 10
        Width = 631
        Height = 395
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 0
        object CDList_ZIP_txt_CheckBox: TCheckBox
          Left = 10
          Top = 197
          Width = 178
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'ZIP die Textdateien'
          TabOrder = 0
          OnClick = CDList_ZIP_txt_CheckBoxClick
        end
        object CDList_CLear_TXT_files_after_zip_CB: TCheckBox
          Left = 10
          Top = 226
          Width = 277
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'L'#246'sche Textdateien nach ZIPPEN'
          TabOrder = 1
          OnClick = CDList_CLear_TXT_files_after_zip_CBClick
        end
        object CDList_ZIP_html_CheckBox: TCheckBox
          Left = 10
          Top = 256
          Width = 188
          Height = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'ZIP die HTML-Dateien'
          TabOrder = 2
          OnClick = CDList_ZIP_html_CheckBoxClick
        end
        object CDList_CLear_HTML_files_after_zip_CB: TCheckBox
          Left = 10
          Top = 286
          Width = 316
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'L'#246'sche HTML-Dateien nach ZIPPEN'
          TabOrder = 3
          OnClick = CDList_CLear_HTML_files_after_zip_CBClick
        end
      end
    end
    object Debug_Dev: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Debug and Dev.'
      ImageIndex = 2
      OnContextPopup = Debug_DevContextPopup
      object Pacman_CheckBox: TCheckBox
        Left = 39
        Top = 30
        Width = 208
        Height = 36
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pacman einstellen'
        TabOrder = 0
        OnClick = Pacman_CheckBoxClick
      end
    end
  end
  object Store_And_Close_Btn: TBitBtn
    Left = 453
    Top = 482
    Width = 218
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
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
