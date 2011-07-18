object Setup_F: TSetup_F
  Left = 254
  Top = 146
  Width = 423
  Height = 423
  HorzScrollBar.Range = 417
  VertScrollBar.Range = 417
  ActiveControl = TXT_File_Output_Edit
  Caption = 'Setup'
  Color = clButton
  Font.Color = clText
  Font.Height = 11
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpVariable
  Font.Style = []
  ParentFont = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  TextWidth = 5
  object Store_And_Close_Btn: TBitBtn
    Left = 272
    Top = 392
    Width = 145
    Height = 25
    Caption = '&Sichern und Schliessen'
    TabOrder = 0
    OnClick = Store_And_Close_BtnClick
    Glyph.Data = {
      3A030000424D3603000000000000360000002800000010000000100000000100
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
  end
  object Setup_Book: TPageControl
    Left = 8
    Top = 8
    Width = 409
    Height = 377
    ActivePage = Allgemein
    TabOrder = 1
    object Allgemein: TTabSheet
      Caption = 'Allgemein'
      object Pathes_GB: TGroupBox
        Left = 8
        Top = 8
        Width = 361
        Height = 113
        TabOrder = 0
        object HTML_File_Dialog_Btn: TSpeedButton
          Left = 320
          Top = 80
          Width = 33
          Height = 22
          Glyph.Data = {
            EA000000424DE60000000000000076000000280000000E0000000E0000000100
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
          Left = 320
          Top = 32
          Width = 33
          Height = 22
          Glyph.Data = {
            EA000000424DE60000000000000076000000280000000E0000000E0000000100
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
          Width = 215
          Height = 18
          Caption = 'Wo sollen die Textdateien gespeichert werden :'
        end
        object HTML_File_Output_Lab: TLabel
          Left = 8
          Top = 64
          Width = 209
          Height = 18
          Caption = 'Wo sollen die Webseiten gespeichert werden :'
        end
        object TXT_File_Output_Edit: TEdit
          Left = 8
          Top = 32
          Width = 305
          Height = 26
          TabOrder = 0
          OnChange = TXT_File_Output_EditChange
        end
        object HTML_File_Output_Edit: TEdit
          Left = 8
          Top = 80
          Width = 305
          Height = 26
          TabOrder = 1
          OnChange = HTML_File_Output_EditChange
        end
      end
      object Language_GB: TGroupBox
        Left = 8
        Top = 128
        Width = 129
        Height = 57
        Caption = ' Sprache / Language '
        TabOrder = 1
        object Language_CB: TComboBox
          Left = 8
          Top = 24
          Width = 105
          Height = 26
          Style = csDropDownList
          ItemHeight = 20
          Items.Strings = (
            'Deutsch'
            'English')
          TabOrder = 0
          OnChange = Language_CBChange
        end
      end
      object First_Start_Panel: TPanel
        Left = 16
        Top = 192
        Width = 369
        Height = 145
        TabOrder = 2
        Visible = False
        object First_Start_Memo: TMemo
          Left = 16
          Top = 8
          Width = 337
          Height = 129
          BorderStyle = bsNone
          Color = clButton
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
        Width = 361
        Height = 177
        TabOrder = 0
        object MP3List_Template_File_Dialog_Btn: TSpeedButton
          Left = 320
          Top = 60
          Width = 33
          Height = 22
          Glyph.Data = {
            EA000000424DE60000000000000076000000280000000E0000000E0000000100
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
          Left = 320
          Top = 132
          Width = 33
          Height = 22
          Glyph.Data = {
            EA000000424DE60000000000000076000000280000000E0000000E0000000100
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
          Top = 44
          Width = 172
          Height = 18
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object MP3List_Multi_Template_File_Lab: TLabel
          Left = 8
          Top = 116
          Width = 172
          Height = 18
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object MP3List_Template_File_Edit: TEdit
          Left = 8
          Top = 60
          Width = 305
          Height = 26
          TabOrder = 0
          OnExit = MP3List_Template_File_EditExit
        end
        object MP3List_Multi_Template_File_Edit: TEdit
          Left = 8
          Top = 132
          Width = 305
          Height = 26
          TabOrder = 1
          OnExit = MP3List_Multi_Template_File_EditExit
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 24
          Width = 337
          Height = 17
          Caption = 'Eine Seite (Groesse beachten)'
          TabOrder = 2
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 96
          Width = 345
          Height = 17
          Caption = 'pro Buchstaben eine Seite'
          TabOrder = 3
          OnClick = RadioButton2Click
        end
      end
    end
    object Album_Liste: TTabSheet
      Caption = 'Album-Liste'
      ImageIndex = 3
      object CDList_Template_GB: TGroupBox
        Left = 8
        Top = 8
        Width = 361
        Height = 73
        Caption = ' Vorlage '
        TabOrder = 0
        object CDList_Template_File_Dialog_Btn: TSpeedButton
          Left = 320
          Top = 36
          Width = 33
          Height = 22
          Glyph.Data = {
            EA000000424DE60000000000000076000000280000000E0000000E0000000100
            0400000000007000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
            33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
            33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
            33003333333333333300}
          OnClick = CDList_Template_File_Dialog_BtnClick
        end
        object CDList_Template_File_Lab: TLabel
          Left = 8
          Top = 20
          Width = 172
          Height = 18
          Caption = 'Welche Vorlage soll benutzt werden : '
        end
        object CDList_Template_File_Edit: TEdit
          Left = 8
          Top = 36
          Width = 305
          Height = 26
          TabOrder = 0
          OnExit = CDList_Template_File_EditExit
        end
      end
    end
    object Debug_Dev: TTabSheet
      Caption = 'Debug and Dev.'
      ImageIndex = 2
      object Pacman_CB: TCheckBox
        Left = 16
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Pacman einstellen'
        TabOrder = 0
        OnClick = Pacman_CBClick
      end
    end
  end
  object MP3List_Open_Template_File_Dialog: TOpenDialog
    Filter = 
      'mp3listvorlage (*.htm, *.html)|*.htm;*.html|Alle Dateien (*.*)|*' +
      '.*'
    FilterIndex = 0
    Height = 0
    Width = 0
    Left = 320
  end
  object CDList_Open_Template_File_Dialog: TOpenDialog
    Filter = 
      'cdlistvorlage (*.htm, *.html)|*.htm;*.html|Alle Dateien (*.*)|*.' +
      '*'
    FilterIndex = 0
    Height = 0
    Width = 0
    Left = 384
  end
  object MP3List_Multi_Open_Template_File_Dialog: TOpenDialog
    Filter = 
      'mp3listvorlage (*.htm, *.html)|*.htm;*.html|Alle Dateien (*.*)|*' +
      '.*'
    FilterIndex = 0
    Height = 0
    Width = 0
    Left = 352
  end
end
