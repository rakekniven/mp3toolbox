object F_Main: TF_Main
  Left = 95
  Top = 128
  Caption = 'F_Main'
  ClientHeight = 740
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    790
    740)
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 3
    Width = 790
    Height = 393
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = ITunesImportTS
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object FolderScanTS: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '??mp3list'
      DesignSize = (
        782
        362)
      object FolderScanPacmanBtn: TSpeedButton
        Left = 571
        Top = 267
        Width = 47
        Height = 59
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Flat = True
        Glyph.Data = {
          06130000424D06130000000000003600000028000000250000002B0000000100
          180000000000D0120000120B0000120B00000000000000000000CECECECECECE
          CECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECECECED6CECED6CECEDECEC6DECEC6DECEC6DECEC6DECEC6DE
          CEC6DECEC6D6CECED6CECECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECECE00CECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECECECECECECECECECECED6CECEDECEC6D6CECEB5CECE94CED6
          73CEE763CEE763CEE763CEE763CEE763CEE773CEE794CED6B5CECED6CECEDECE
          C6D6CECECECECECECECECECECECECECECECECECECECECECECE00CECECECECECE
          CECECECECECECECECECECECECECECECECECECECECECECECECECECED6CECED6CE
          CEBDCECE7BCEDE42CEE708CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00
          CEFF00CEFF00CEFF08CEFF42CEE77BCEDEBDCECED6CECED6CECECECECECECECE
          CECECECECECECECECE00CECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECEDECEC6BDCECE63CEDE10CEF700CEFF00CEFF00CEFF00CEFF
          00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CE
          FF10CEF763CEDEBDCECEDECEC6CECECECECECECECECECECECE00CECECECECECE
          CECECECECECECECECECECECECECECECECECED6CECED6CECE8CCEDE21CEF700CE
          FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00
          CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF21CEF78CCEDED6CECE
          D6CECECECECECECECE00CECECECECECECECECECECECECECECECECECECECECED6
          CECEC6CECE5ACEDE00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF
          00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CE
          FF00CEFF00CEFF00CEFF00CEFF5ACEDEC6CECED6CECECECECE00CECECECECECE
          CECECECECECECECECECECECED6CECEC6CECE42CEEF00CEFF00CEFF00CEFF00CE
          FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00
          CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF
          42CEEFBDCECECECECE00CECECECECECECECECECECECECECECED6CECEBDCECE39
          CEF700CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF
          00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CE
          FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF5ACEE7D6CECE00CECECECECECE
          CECECECECECED6CECEC6CECE31CEF700CEFF00CEFF00CEFF00CEFF00CEFF00CE
          FF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00
          CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF
          18CEF7A5CECED6CECE00CECECECECECECECECECECECED6CEC65ACEE700CEFF00
          CEFF00CEFF00CEFF00CEFF00CEFF08CEFF00CEFF00CEFF08CEFF08CEFF00CEFF
          00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CE
          FF00CEFF00CEFF00CEFF00CEFF18CEF7B5CECED6CECECECECE00CECECECECECE
          CECECEDECEC68CCEDE00CEFF00CEFF00CEFF08CEFF08D6FF00D6FF10D6FF08CE
          FF10D6FF08CEFF08CEFF08CEFF08CEFF08CEFF08CEFF08CEFF00CEFF00CEFF00
          CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF18CEF7B5CECE
          D6CECECECECECECECE00CECECECECECED6CECEC6CECE18CEF700CEFF10D6FF08
          CEFF10D6FF10D6FF18D6FF18DEFF18D6FF18D6FF21DEFF18D6FF21DEFF10D6FF
          10D6FF08CEFF10D6FF08CEFF08CEFF08CEFF00CEFF00CEFF00CEFF00CEFF00CE
          FF00CEFF00CEFF18CEF7B5CECED6CECECECECECECECECECECE00CECECECECECE
          D6CECE73CEDE00CEFF10D6FF10D6FF18D6FF10D6FF21DEFF21DEFF21DEFF21DE
          FF21DEFF21DEFF21DEFF21CEF721DEFF21DEFF18D6FF10D6FF10D6FF08D6FF08
          CEFF00CEFF00CEFF00CEFF00CEFF00CEFF00CEFF18CEF7B5CECED6CECECECECE
          CECECECECECECECECE00CECECECECECEC6CECE29CEF710D6FF18D6FF21DEFF18
          DEFF29DEFF31D6FF29DEFF31D6FF31D6FF31DEFF31D6FF31DEFF29DEFF29DEFF
          21DEFF21DEFF18D6FF18D6FF18D6FF10D6FF08CEFF08CEFF00CEFF00CEFF00CE
          FF18CEF7B5CECED6CECECECECECECECECECECECECECECECECE00CECECED6CECE
          8CCEDE10D6FF18DEFF21DEFF29DEFF29DEFF31DEFF31DEFF39D6FF31DEFF39D6
          FF39D6FF39D6FF31DEFF31DEFF39D6FF31D6FF31DEFF29DEFF29DEFF18D6FF18
          D6FF18D6FF10D6FF08CEFF00CEFF29CEF7B5CECED6CECECECECECECECECECECE
          CECECECECECED6D6D600CECECED6CEC65ACEE710D6FF29DEFF31DEFF31D6FF31
          DEFF31DEFF39D6FF42DEFF42DEFF42DEFF42DEFF42E7FF42D6FF42E7FF39D6FF
          39D6FF39D6FF31DEFF31D6FF31DEFF18D6FF18D6FF10D6FF00CEFF31CEF7BDCE
          CED6CECECECECECECECECECECECECECECECECED6D6D6A58CBD00CECECEC6CECE
          31D6F721DEFF31D6FF31D6FF39D6FF31E7FF42DEFF42E7FF4AE7FF4AE7FF4ADE
          FF4AE7FF4ADEFF4AE7FF4ADEFF4ADEFF42DEFF39D6FF39D6FF31DEFF31DEFF31
          D6FF21DEFF18D6FF39CEF7BDCECED6CECECECECECECECECECECECECECECECECE
          D6D6CEBDA5C642109C00D6CECEADCECE31D6FF31D6FF31DEFF31DEFF42DEFF4A
          DEFF4ADEFF4ADEFF52DEFF52DEFF52E7FF52DEFF52E7FF52E7FF52E7FF4ADEFF
          52E7FF4ADEFF42E7FF42DEFF31DEFF31DEFF29CEF752CEF7C6CECED6CECECECE
          CECECECECECECECECECECECECECECECED6D6CE734AA521009400D6CECE9CCECE
          31D6FF31DEFF39D6FF4ADEFF42DEFF4AE7FF52E7FF5AE7FF5ADEFF63E7FF63E7
          FF63E7FF63E7FF63E7FF63E7FF5AE7FF52DEFF52E7FF4ADEFF4AE7FF42D6FF29
          DEFF52CEF7BDCECED6CECECECECECECECECECECECECECECECECECECECECECECE
          C6C6CE42109C29009400D6CECE8CCEE729DEFF39D6FF42DEFF4ADEFF52DEFF5A
          E7FF63E7FF63E7FF6BEFFF6BE7FF6BE7FF63E7FF73E7FF6BE7FF6BEFFF63E7FF
          63E7FF5AE7FF52E7FF4AE7FF42DEFF52D6F7BDCECED6CECECECECECECECECECE
          CECECECECECECECECECECECECED6D6CEADADBD31009C29009400D6CECE7BCEDE
          29DEFF42DEFF4ADEFF5AE7FF52DEFF63E7FF63E7FF6BE7FF6BE7FF73E7FF6BEF
          FF7BE7FF73E7FF73E7FF73EFFF73E7FF63E7FF6BEFFF63E7FF5AE7FF73D6EFBD
          CECED6CECECECECECECECECECECECECECECECECECECECECECECECECECED6D6D6
          A594B531009429009C00D6CECE84CEE731DEFF4AE7FF52DEFF63E7FF63E7FF63
          E7FF6BEFFF73E7FF73EFFF84EFFF7BEFFF7BF7FF7BEFFF7BEFFF7BEFFF7BEFFF
          73EFFF63E7FF63E7FF63E7FFA5CEDEDECEC6CECECECECECECECECECECECECECE
          CECECECECECECECECECECECECED6D6D69494B529009429009C00D6CECE84DEE7
          42DEFF52E7FF5AE7FF5AE7FF6BE7FF6BEFFF73EFFF7BF7FF84EFFF84F7FF8CEF
          FF8CEFFF8CEFFF84F7FF84EFFF7BEFFF7BEFFF73EFFF6BEFFF63E7FF6BDEFFAD
          CED6D6CECECECECECECECECECECECECECECECECECECECECECECECECECED6D6D6
          A594B531009429009C00D6CECE94CEEF42DEFF52E7FF5AE7FF6BE7FF73EFFF73
          EFFF84EFFF84EFFF8CEFFF9CF7FF9CEFFF9CF7FF9CF7FF9CEFFF9CEFFF84EFFF
          84EFFF7BE7FF73EFFF63E7FF63E7FF63E7FFB5CEDED6CECECECECECECECECECE
          CECECECECECECECECECECECECED6D6CEADADBD31009C29009400D6CECEA5CEDE
          52DEFF5AE7FF6BE7FF6BE7FF73EFFF7BEFFF8CEFFF8CEFFF9CEFFF9CEFFF9CF7
          FF9CF7FF9CF7FF9CF7FF9CF7FF94F7FF8CEFFF84F7FF7BE7FF73EFFF6BE7FF63
          E7FF5ADEFFADCED6D6CECECECECECECECECECECECECECECECECECECECECECECE
          C6C6CE42189C29009400D6CECEB5CECE52DEFF5AE7FF63E7FF73EFFF7BEFFF84
          EFFF8CEFFF9CF7FF9CF7FF9CFFFFA5FFFFADFFFFADF7FFA5FFFF9CF7FF9CF7FF
          9CF7FF84EFFF7BEFFF7BEFFF63E7FF6BE7FF52E7FF52DEFFB5CEDED6CECECECE
          CECECECECECECECECECECECECECECECED6D6CE735AA529009400CECECEC6CECE
          63D6F75AE7FF63E7FF73EFFF7BEFFF8CEFFF94F7FF9CEFFFA5FFFFADEFFFB5F7
          FFADF7FFB5FFFFADF7FFADF7FF9CF7FF9CEFFF94EFFF84EFFF7BE7FF73E7FF63
          E7FF63E7FF52E7FF42DEFFADCED6D6CECECECECECECECECECECECECECECECECE
          D6D6CEBDA5C631089C00CECECECECEC684D6E763E7FF6BE7FF73EFFF84EFFF8C
          EFFF94EFFF9CF7FFA5FFFFADF7FFBDFFFFBDF7FFBDFFFFB5F7FFADFFFFA5FFFF
          9CF7FF9CF7FF84EFFF7BEFFF73EFFF6BEFFF63E7FF4AE7FF4ADEFF42DEFFADCE
          D6D6CECECECECECECECECECECECECECECECECED6D6D69C84B500CECECED6CECE
          A5CEDE63E7FF63E7FF7BEFFF84EFFF8CEFFF9CFFFF94EFFFADF7FFB5FFFFBDF7
          FFCEFFFFBDFFFFBDFFFFADF7FFA5FFFF94F7FF9CEFFF8CEFFF7BEFFF52ADBD42
          9CAD5ACEE75AEFFF4ADEFF39D6FF39D6FFADCECED6CECECECECECECECECECECE
          CECECECECECED6D6D600CECECECECECECECECE73DEF76BEFFF73E7FF7BEFFF94
          EFFF94F7FF9CF7FFADF7FFB5FFFFBDFFFFBDFFFFCEFFFFB5FFFFADF7FFA5FFFF
          94F7FF9CF7FF84DEEF184A4A00000000000010212139ADBD4AE7FF39D6FF29DE
          FF42CEF7ADCECED6CECECECECECECECECECECECECECECECECE00CECECECECECE
          CECECE9CCEDE6BEFFF7BEFFF84F7FF8CEFFF94F7FF9CF7FF9CF7FFB5F7FFBDFF
          FFBDF7FFBDFFFFB5FFFFADF7FF9CF7FF9CF7FF9CEFFF31525200000000000000
          000000000000181842CEEF42DEFF31D6FF29DEFF31CEF7B5CECED6CECECECECE
          CECECECECECECECECE00CECECECECECECECECECECECE73D6F773EFFF84F7FF84
          EFFF9CF7FF9CEFFF94FFFFADF7FFADFFFFB5F7FFB5F7FFB5F7FF9CF7FF94EFFF
          9CF7FF84DEEF0008080000000000000000000000000000003194B542E7FF31DE
          FF31D6FF10D6FF29CEF7B5CECED6CECECECECECECECECECECE00CECECECECECE
          CECECED6CECEADCED66BDEFF7BEFFF84EFFF8CEFFF94EFFF94F7FF9CEFFFA5FF
          FFA5FFFFA5FFFF9CF7FF9CF7FF9CF7FF94F7FF84DEEF00101000000000000000
          000000000000000039A5B539EFFF31DEFF31D6FF18D6FF10D6FF21CEF7A5CECE
          DECEC6CECECECECECE00CECECECECECECECECECECECECECECE9CCEDE6BEFFF7B
          EFFF84EFFF94F7FF94F7FF9CFFFF94F7FF9CF7FF94F7FF9CF7FF9CF7FF8CEFFF
          8CEFFF84F7FF31738400000000000000000000000008292939CEF739D6FF31D6
          FF21DEFF18D6FF18DEFF00CEFF10CEF7A5CECEDECEC6CECECE00CECECECECECE
          CECECECECECECECECED6CEC69CCEE77BE7FF84F7FF84EFFF8CEFFF8CEFFF94EF
          FF9CF7FF8CEFFF8CEFFF94F7FF8CEFFF84EFFF7BEFFF73EFFF296B7300212100
          212108424A42BDD642E7FF31DEFF31DEFF21DEFF18D6FF08CEFF08CEFF00CEFF
          10CEF79CCECED6CECE00CECECECECECECECECECECECECECECECECECED6CECE8C
          D6F773E7FF7BEFFF84EFFF8CEFFF8CEFFF8CEFFF8CEFFF8CEFFF84EFFF84EFFF
          7BEFFF73E7FF6BEFFF6BEFFF5ADEF752D6F74AE7FF42E7FF31DEFF31DEFF29DE
          FF18D6FF18D6FF08CEFF00CEFF00CEFF00CEFF42CEE7D6CECE00CECECECECECE
          CECECECECECECECECECECECED6CECEBDCECE73D6F773EFFF73EFFF7BEFFF7BE7
          FF84F7FF84EFFF7BEFFF7BEFFF7BEFFF73E7FF6BEFFF6BE7FF63E7FF5AE7FF52
          E7FF4ADEFF39D6FF31D6FF31DEFF29CEF718D6FF08CEFF00CEFF00CEFF00CEFF
          39CEF7BDCECED6CECE00CECECECECECECECECECECECECECECECECECECECECECE
          CECECECECE8CD6E76BE7FF6BE7FF73EFFF73E7FF7BEFFF73EFFF73E7FF63E7FF
          63E7FF63E7FF5AE7FF5AE7FF4AE7FF4ADEFF42DEFF39D6FF31DEFF21DEFF18D6
          FF08D6FF10D6FF00CEFF00CEFF5ACEE7C6CECED6CECECECECE00CECECECECECE
          CECECECECECECECECECECECECECECECECECECECECECECEC6A5CEDE73D6F763E7
          FF63E7FF63E7FF6BE7FF63E7FF63E7FF5AE7FF5AE7FF5AE7FF4ADEFF4ADEFF42
          DEFF39D6FF31D6FF29DEFF21CEF718D6FF00CEFF00CEFF18CEF784CEDED6CEC6
          D6CECECECECECECECE00CECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECED6CECEC6CECE9CCEDE73DEF75AE7FF52E7FF63E7FF5AE7FF
          5AE7FF4AE7FF4ADEFF42DEFF42DEFF31DEFF31D6FF29DEFF21CEF708D6FF08CE
          FF21CEF773CEDEBDCECED6CECECECECECECECECECECECECECE00CECECECECECE
          CECECECECECECECECECECECECECECECECECECECECECECECECECECECECECED6CE
          CECECECEA5CEDE8CD6E763D6F752DEFF4ADEFF4ADEFF39D6FF39D6FF31D6FF29
          DEFF31D6FF29CEF731CEF75ACEE794CED6CECECED6CECED6CECECECECECECECE
          CECECECECECECECECE00CECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECECECECECECECECECECECECECED6CECED6CECEC6CECEADCECE
          ADCED694CEE794CEE79CCEE794CEE794CEE7A5CED6ADCECEC6CECED6CECED6CE
          CECECECECECECECECECECECECECECECECECECECECECECECECE00CECECECECECE
          CECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECECECECECECED6CECED6CECED6CECED6CECED6CECED6CECED6
          CECED6CECED6CECECECECECECECECECECECECECECECECECECECECECECECECECE
          CECECECECECECECECE00}
        Margin = 0
        Transparent = False
        Visible = False
      end
      object FolderScanListDirCntLab2: TLabel
        Left = 696
        Top = 188
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object FolderScanListResultLab2: TLabel
        Left = 696
        Top = 168
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '000000'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 698
      end
      object Char_Count_Lab: TLabel
        Left = 613
        Top = 0
        Width = 7
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '0'
        Visible = False
      end
      object Char_Count_Lab2: TLabel
        Left = 628
        Top = 0
        Width = 62
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Characters'
        Visible = False
      end
      object FolderScanListResultLab1: TLabel
        Left = 569
        Top = 168
        Width = 119
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '??Files found'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        OnClick = FolderScanListResultLab1Click
        ExplicitLeft = 571
      end
      object FolderScanListDirCntLab1: TLabel
        Left = 569
        Top = 188
        Width = 119
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '??Directories searched'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 571
      end
      object FolderScanListSearchTimeLab1: TLabel
        Left = 569
        Top = 208
        Width = 119
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '??Search time'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 571
      end
      object FolderScanScanResult1: TLabel
        Left = 569
        Top = 228
        Width = 119
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '??Tags scanned'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 571
      end
      object FolderScanScanTimeLab1: TLabel
        Left = 569
        Top = 248
        Width = 119
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '??Scan time'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 571
      end
      object FolderScanScanResult2: TLabel
        Left = 696
        Top = 228
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 698
      end
      object FolderScanScanTimeLab2: TLabel
        Left = 696
        Top = 248
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '00:00:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 698
      end
      object FolderScanListSearchTimeLab2: TLabel
        Left = 696
        Top = 207
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '00:00:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 698
      end
      object FolderScanMultiDirGroupBox: TGroupBox
        Left = 0
        Top = 5
        Width = 535
        Height = 332
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight]
        Caption = '??Directories'
        TabOrder = 3
        DesignSize = (
          535
          332)
        object Multi_Dir_ListBox: TListBox
          Left = 187
          Top = 30
          Width = 332
          Height = 291
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          ExtendedSelect = False
          MultiSelect = True
          TabOrder = 2
          OnMouseUp = Multi_Dir_ListBoxMouseUp
        end
        object Load_From_Button: TButton
          Left = 11
          Top = 155
          Width = 168
          Height = 25
          Hint = 'Gespeicherte Verzeichnisse laden.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Load directories from config'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = Load_From_ButtonClick
        end
        object Save_To_Button: TButton
          Left = 11
          Top = 183
          Width = 168
          Height = 25
          Hint = 'Aktuelle Auswahl speichern.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Save directories'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = Save_To_ButtonClick
        end
        object Sel_All_Button: TButton
          Left = 11
          Top = 211
          Width = 168
          Height = 25
          Hint = 'Alle Verzeichnisse markieren.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Select all'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = Sel_All_ButtonClick
        end
        object Sel_None_Button: TButton
          Left = 11
          Top = 239
          Width = 168
          Height = 25
          Hint = 'Kein Verzeichnis selektieren.'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Select none'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = Sel_None_ButtonClick
        end
        object Clear_Sel_Button: TButton
          Left = 11
          Top = 267
          Width = 168
          Height = 25
          Hint = 'Markierte Verzeichniseintr'#228'ge l'#246'schen'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Clear selected'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = Clear_Sel_ButtonClick
        end
        object Clear_All_Button: TButton
          Left = 11
          Top = 295
          Width = 168
          Height = 25
          Hint = 'Alle Verzeichniseintr'#228'ge l'#246'schen'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Clear all'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = Clear_All_ButtonClick
        end
        object Subdir_CheckBox: TCheckBox
          Left = 11
          Top = 68
          Width = 168
          Height = 21
          Hint = 'Unterverzeichnisse durchsuchen'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??search subdir'#180's'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 13
          Font.Name = 'gothic l'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 3
          OnClick = Subdir_CheckBoxClick
        end
        object Output_with_path_CB: TCheckBox
          Left = 11
          Top = 97
          Width = 168
          Height = 21
          Hint = 'Ausgabe mit kompletten Pfadangaben'
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??output with pathes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 13
          Font.Name = 'gothic l'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Visible = False
          OnClick = Output_with_path_CBClick
        end
        object Filter_GroupBox: TGroupBox
          Left = 259
          Top = 223
          Width = 168
          Height = 61
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Filter : '
          TabOrder = 1
          Visible = False
          object Filter_Edit: TEdit
            Left = 15
            Top = 35
            Width = 80
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 13
            Font.Name = 'arial'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object filter_ComboBox: TComboBox
            Left = 15
            Top = 36
            Width = 139
            Height = 21
            Hint = 'Nach was soll gesucht werden'
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 13
            Font.Name = 'arial'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnChange = filter_ComboBoxChange
            Items.Strings = (
              '*.mp3'
              '*.mp2'
              '*.*'
              '*.gif'
              '*.jpg'
              '*.png')
          end
          object Own_Filter_CheckBox: TCheckBox
            Left = 15
            Top = 15
            Width = 149
            Height = 21
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = '??own Filter'
            TabOrder = 0
            OnClick = Own_Filter_CheckBoxClick
          end
        end
        object Sel_Dir_Btn: TBitBtn
          Left = 10
          Top = 30
          Width = 168
          Height = 30
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??Select Dir'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000002323234A4A4A494A4A4B4C4C4C4C4C4B4C4C4A4B4B48
            49494646464343434041413334341E1F1F000000000000000000000000000000
            00001B334EBDBDBDA5A6A6A8AAAAABADADACAEAEAAABABA6A7A7A0A1A1999A9A
            9294948B8D8D48494900000000000000000000000000000000001B334E505356
            CECECEBCBEBEC2C4C4C5C6C6C2C3C3BEBFBFB5B6B6ADAEAEA4A5A59D9E9E6E6F
            6F12121200000000000000000000000000001B334E183049CDCDCDC9CACAD4D5
            D5D4D5D5D0D2D2CBCCCCC1C2C2B8B9B9AEAFAFA1A2A294959548494900000000
            000000000000000000001B334E447DB74E5153DADADADADBDBE0E1E1DCDDDDD5
            D6D6CACBCBC0C1C1B5B6B6A8A9A99FA0A0676868212222000000000000000000
            00001B334E82C2FE19314ADBDBDBDEDFDFE7E8E8E4E6E6DEDFDFD1D2D2C6C7C7
            B9BABAACADAD9FA0A093949448494900000000000000000000001B334E82C2FE
            4E86C44C4F52F5F5F5F5F5F5ECECECE4E4E4DCDCDCD4D4D4CBCBCBC4C4C4BCBC
            BCB5B5B5B3B3B330303000000000000000001B334E8AC8FE82C2FE1B334E4D50
            534D50534F5255575A5C4E51544E51545053565053564E515400000000000000
            000000000000000000001B334E9AD3FE87C5FD82C2FE62ACF862ACF862ACF862
            ACF862ACF862ACF862ACF862ACF8000000000000000000000000000000000000
            00001B334E66A5E59AD3FE85C5FE66A5E51B334E1B334E1B334E1B334E1B334E
            1B334E1B334E00000000000000000000000000000000000000000000001B334E
            1B334E1B334E1B334E0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000}
          TabOrder = 0
          OnClick = Sel_Dir_BtnClick
        end
        object Output_with_filesize_CB: TCheckBox
          Left = 11
          Top = 126
          Width = 168
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = '??output with size'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 13
          Font.Name = 'gothic l'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnClick = Output_with_filesize_CBClick
        end
      end
      object FolderScanTxtOutputBtn: TBitBtn
        Left = 569
        Top = 92
        Width = 185
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??create &textfile'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Glyph.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          01000000000040000000120B0000120B00000200000002000000FFFFFF000000
          000000000000000000007FF00000000000007FFE0000000000007FFE00000000
          00007FFE0000000000007FFE0000000000007FFE000000000000000000000000
          0000}
        Margin = 10
        ParentFont = False
        TabOrder = 0
        OnClick = FolderScanTxtOutputBtnClick
      end
      object FolderScanHtmlOutputBtn: TBitBtn
        Left = 569
        Top = 53
        Width = 185
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??create &website'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000000000000000
          0000000000005858583030303030303030303030303030303030303030308000
          80000000303030303030000000000000000000000000585858B4BDC2A2ACB19B
          AAB4A0B5C29BB3C591AFC088AABF800080C000C0000000303030000000000000
          000000000000422C15422C15422C15505A5C8E9CA493A4B0A5BCCCB3CFE28000
          80FFC0FFC000C0000000000000000000422C15643D1E8A5C2E56524037484831
          4237422C15767A7E91A1ABAAC0D0800080800080800080800080000000442917
          A4743DBC7642CC72393796AE40768331585E3C3127422C15727D7E9CAEB9C1DC
          ECBAD6E985A6BC3030300000008C582AD48F58DAA063D48E496EB7D54A98A954
          5857643D1E3E2C237C6F659AA6ADCAE0EEC2DBEC8AA8BC303030593822C78650
          DDA976B8976F6FBADABE8458A67B4EB96E3AA6512556361E422C15A1ABB2D4E6
          F1CADFEC90ABBC3030305F3926DAAB80AB906F95D7F29A9B7CB5A289DF8E51D0
          7D45B0602F7C401E422C15A8B0B4DCEBF3D4E2EC97AEBC303030825025BE844A
          CBDDE6E5F0FF86D1F76FBCDCA9784DCE7A41B363337D4221432C15BBC0C4E3ED
          F3DCE7EE97AEBC303030000000825025C6E1E7EAF5FFABDEEE81D0E4539AB89C
          784DAD5C2E6E3C1F817265DADCDDECF0F4D9E0E7AFB6BE303030000000A96E37
          B8C9B8BFE0FEC1E6F086C2D368B1B079816C9B5226422C15BDBBBBF5F5F6DEE0
          E2B1B7BC84898F303030000000000000A96E3740768371D2F295AE9EC7864F9B
          6239653E1CC5C0BBFFFFFF8989897070706B6B6B424242303030800080000000
          0000000000009B6239653E1C7164438F908CFFFFFFFFFFFFFCFCFC707070CECE
          CEFFFFFF999999303030800080FFC0FFC000C0000000585858DEDEDEFFFFFFFF
          FFFFFFFFFFFFFFFFEAEAEA6D6D6DFFFFFF999999585858000000000000800080
          FFC0FF000000585858DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEB1B7BC5858589999
          9958585800000000000000000000000080008080008058585858585858585858
          5858585858585858585858585858585858000000000000000000}
        Margin = 10
        ParentFont = False
        TabOrder = 1
        OnClick = FolderScanHtmlOutputBtnClick
      end
      object FolderScanGoBtn: TBitBtn
        Left = 571
        Top = 14
        Width = 185
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??Go !'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
          70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
          70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
          70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        Margin = 10
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        OnClick = FolderScanGoBtnClick
      end
      object FolderScanPacmanPanel: TPanel
        Left = 569
        Top = 209
        Width = 187
        Height = 52
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 4
        Visible = False
        object FolderScanPacmanSpeedEdit: TEdit
          Left = 10
          Top = 11
          Width = 50
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
          OnChange = FolderScanPacmanSpeedEditChange
        end
        object FolderScanPacmanStartBtn: TButton
          Left = 69
          Top = 15
          Width = 31
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'go'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = FolderScanPacmanStartBtnClick
        end
        object FolderScanPacmanCloseBtn: TBitBtn
          Left = 108
          Top = 15
          Width = 51
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'close'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = FolderScanPacmanCloseBtnClick
        end
      end
      object FolderScanSearchProgressBar: TProgressBar
        Left = 569
        Top = 130
        Width = 185
        Height = 30
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Enabled = False
        TabOrder = 5
      end
    end
    object ITunesImportTS: TTabSheet
      Caption = '??iTunes import'
      ImageIndex = 3
      DesignSize = (
        782
        362)
      object ITunesImportXmlFileLab: TLabel
        Left = 19
        Top = 12
        Width = 92
        Height = 16
        Caption = '??Which xml file'
      end
      object ITunesImportScanTime1: TLabel
        Left = 569
        Top = 188
        Width = 59
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??Scan time'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object ITunesImportFoundCntLab1: TLabel
        Left = 569
        Top = 167
        Width = 82
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??Items found'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ITunesImportFoundCntLab2: TLabel
        Left = 696
        Top = 164
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '000000'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object ITunesImportScanTime2: TLabel
        Left = 696
        Top = 188
        Width = 64
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '00:00:00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 698
      end
      object ITunesImportXmlFileSelectBtn: TSpeedButton
        Left = 400
        Top = 34
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
        OnClick = ITunesImportXmlFileSelectBtnClick
      end
      object ITunesImportHyperlinkLab: TLabel
        Left = 19
        Top = 75
        Width = 175
        Height = 16
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = '??How to get these XML files?'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpVariable
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
        OnClick = ITunesImportHyperlinkLabClick
      end
      object ITunesImportGoBtn: TBitBtn
        Left = 569
        Top = 30
        Width = 185
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??Go !'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
          70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
          70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
          70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        Margin = 10
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = ITunesImportGoBtnClick
      end
      object ITunesImportHtmlOutputBtn: TBitBtn
        Left = 569
        Top = 69
        Width = 185
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??create &website'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000000000000000
          0000000000005858583030303030303030303030303030303030303030308000
          80000000303030303030000000000000000000000000585858B4BDC2A2ACB19B
          AAB4A0B5C29BB3C591AFC088AABF800080C000C0000000303030000000000000
          000000000000422C15422C15422C15505A5C8E9CA493A4B0A5BCCCB3CFE28000
          80FFC0FFC000C0000000000000000000422C15643D1E8A5C2E56524037484831
          4237422C15767A7E91A1ABAAC0D0800080800080800080800080000000442917
          A4743DBC7642CC72393796AE40768331585E3C3127422C15727D7E9CAEB9C1DC
          ECBAD6E985A6BC3030300000008C582AD48F58DAA063D48E496EB7D54A98A954
          5857643D1E3E2C237C6F659AA6ADCAE0EEC2DBEC8AA8BC303030593822C78650
          DDA976B8976F6FBADABE8458A67B4EB96E3AA6512556361E422C15A1ABB2D4E6
          F1CADFEC90ABBC3030305F3926DAAB80AB906F95D7F29A9B7CB5A289DF8E51D0
          7D45B0602F7C401E422C15A8B0B4DCEBF3D4E2EC97AEBC303030825025BE844A
          CBDDE6E5F0FF86D1F76FBCDCA9784DCE7A41B363337D4221432C15BBC0C4E3ED
          F3DCE7EE97AEBC303030000000825025C6E1E7EAF5FFABDEEE81D0E4539AB89C
          784DAD5C2E6E3C1F817265DADCDDECF0F4D9E0E7AFB6BE303030000000A96E37
          B8C9B8BFE0FEC1E6F086C2D368B1B079816C9B5226422C15BDBBBBF5F5F6DEE0
          E2B1B7BC84898F303030000000000000A96E3740768371D2F295AE9EC7864F9B
          6239653E1CC5C0BBFFFFFF8989897070706B6B6B424242303030800080000000
          0000000000009B6239653E1C7164438F908CFFFFFFFFFFFFFCFCFC707070CECE
          CEFFFFFF999999303030800080FFC0FFC000C0000000585858DEDEDEFFFFFFFF
          FFFFFFFFFFFFFFFFEAEAEA6D6D6DFFFFFF999999585858000000000000800080
          FFC0FF000000585858DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEB1B7BC5858589999
          9958585800000000000000000000000080008080008058585858585858585858
          5858585858585858585858585858585858000000000000000000}
        Margin = 10
        ParentFont = False
        TabOrder = 1
        OnClick = FolderScanHtmlOutputBtnClick
      end
      object ITunesImportXmlFileCB: TComboBox
        Left = 19
        Top = 34
        Width = 374
        Height = 24
        TabOrder = 2
        Text = 't:\Zuletzt hinzugef'#252'gt.xml'
        OnChange = ITunesImportXmlFileCBChange
      end
      object FtpUploadBitBtn: TBitBtn
        Left = 569
        Top = 108
        Width = 185
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??Upload via FTP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Margin = 10
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = FtpUploadBitBtnClick
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 721
    Width = 790
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    OnClick = StatusBarClick
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 398
    Width = 790
    Height = 323
    ActivePage = SearchResultTS
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    OnChange = PageControl2Change
    object SearchResultTS: TTabSheet
      Caption = '?!SearchResult'
      ImageIndex = 1
      object MP3_ListBox: TListBox
        Left = 0
        Top = 0
        Width = 782
        Height = 292
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ItemHeight = 15
        MultiSelect = True
        ParentFont = False
        PopupMenu = FolderScanPopupMenu
        TabOrder = 0
        OnClick = MP3_ListBoxClick
        OnMouseUp = MP3_ListBoxMouseUp
      end
    end
    object LogTS: TTabSheet
      Caption = '?!Log'
      object LogListBox: TListBox
        Left = 0
        Top = 0
        Width = 782
        Height = 292
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        ItemHeight = 15
        MultiSelect = True
        ParentFont = False
        TabOrder = 0
      end
    end
    object NameCheckTS: TTabSheet
      Caption = '?!NameCheckTS'
      ImageIndex = 2
      object NameCheck_ListBox: TListBox
        Left = 0
        Top = 0
        Width = 782
        Height = 292
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        OnMouseUp = NameCheck_ListBoxMouseUp
      end
    end
    object GenreTS: TTabSheet
      Caption = '??GenreTS'
      ImageIndex = 4
      object GenreLab: TLabel
        Left = 16
        Top = 3
        Width = 90
        Height = 16
        Caption = '??Found genres'
      end
      object Genre_CheckListBox: TCheckListBox
        Left = 16
        Top = 25
        Width = 465
        Height = 315
        TabOrder = 0
      end
    end
    object ErrorTS: TTabSheet
      Caption = '?!Error'
      ImageIndex = 3
      object ListBox_Error: TListBox
        Left = 0
        Top = 0
        Width = 782
        Height = 292
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object MainSelectionPanel1: TPanel
    Left = 771
    Top = 136
    Width = 573
    Height = 361
    TabOrder = 2
    object MainSelectionPanel2: TPanel
      Left = 91
      Top = 69
      Width = 406
      Height = 223
      BevelOuter = bvNone
      TabOrder = 0
      object MainSelectionBtn1: TSpeedButton
        Left = 0
        Top = 0
        Width = 406
        Height = 108
        Caption = '?!Import your iTunes library and create your websites'
        Glyph.Data = {
          36300000424D3630000000000000360000002800000040000000400000000100
          18000000000000300000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFFFFF4FFFFECF7FEF0E8DCECDDC4EAD7B3EBCCA2ECCBA3E6D5A5ECDAB6
          EEE7C9EFE8E5EEF7FFF7FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFEEEEEBED
          CCB6ECA880FA8E56FE873CFF892FFF8930FF882FFF892DFF9522FF9720FF9823
          FF9A21FFA514FDB41CF8B848EDD176EDDFC1F2F6F7FBFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF2F4F7ECC9C2F39375FE7A51FF
          7545FF7A3CFF7538FF7B37FD8A3AFC9143FBA159F9AB5AF9A95CFAA958FBAB4B
          FCA52FFDA425FFA017FFA50CFFAE14FFB310FDBA25F2CC66ECE9C6F6F8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF0F8F9EDB3B2FB7469FF714EFF704DFF683DFD
          7A4AF2A47CEDC7B9E8DFD6E6EAEDE5ECF4E5EEF3E5EBF0E5EAF0E6EBF0E5ECF2
          E5EAF4E7E9E9EADECDEFD09AF7BC51FFAE13FFAB02FFB315FFBD10F7CD3BEDE3
          B1F4F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF5FFFFEAC2C3FD6C69FF635AFF6154FF6852F69D8AE9E3D8E5
          F7FCE5EEF1E7E6E3E7E4E0E7E3DEE8E2DDE7E2DDE8E2DDE8E2DDE7E2DDE7E2DD
          E7E2DDE7E3DFE7E4E2E6E5E6E5ECF9E5ECFBE9DEBCF6C24CFFBB07FFBD0DFFBE
          0CF8CD33EAEAD8FAFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFEDE7E9F58184FF5C62FF615AFE635CF2AAA9E7EDEDE5F2F2E7E4E2E7
          E2DFE8E2DFE8E2DFE8E2DDE8E3DDE8E3DDE8E3DDE8E3DEE8E3DEE8E3DEE8E3DE
          E8E3DEE8E3DDE8E2DDE7E2DEE8E3DCE9E5DCE8E6E4E4ECFBE7E9E4F5D363FDBD
          07FFBD0EFFC30DEED875F1F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFF
          FFE9C7CAFD5E72FF5A67FF4A5AF49E9FE6F1F1E6EEECE7E3E0E8E2DFE7E3DFE7
          E3DFE8E3E0E7E3E0E7E3DFE8E3DEE8E3DEE8E3DEE8E3DDE7E2DDE7E2DDE7E2DD
          E7E2DDE8E2DEE7E2DEE7E2DEE7E2DEE8E3DDE8E3DDE9E4DBE8E4DFE6EAF5E5E8
          E3F9CB45FFC100FFC511F8CF35EBEDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFEF90
          AAFF4F72FF556EFC6572E8E2E1E5F3F3E8E3E0E9E2E1E8E2E1E7E3E0E8E3DFE8
          E3DFE7E3DFE8E3E0E8E3E0E7E2E0E7E2DFE7E2DDE7E2DDE8E3DEE8E2DDE8E3DE
          E8E2DEE7E3DDE8E3DDE7E2DEE8E3DDE7E2DEE8E3DDE8E4DDE9E5DCE9E4DCE8E5
          DFE5EDFFECDDB0FEC40BFFC812FDC510EAE5B0FDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFEEE93ACFF53
          72FF4B6AF78193E5FBF8E8E7E6E9E2E1E9E2E2E9E3E2E9E3E2E9E3E2E9E3E1E9
          E3E1E8E3E1E9E3E2E9E2E2E8E3E0E8E3E0E8E3E0E8E4E0E9E5E0E9E4DFE9E5E0
          E9E5E0E8E4DEE9E4DDE9E4DCE9E5DCE9E5DCE9E5DCE9E5DCE9E5DDE9E5DDE9E4
          DCE9E4DBE7E7EDE7E7E9FBC829FFC710FDC916EAE4A7FBFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFEE8EADFF4D7AFF48
          6AF09AB4E5FDFAE9E2E2E8E2E1E8E3E1E8E2E1E9E2E1E9E2E1E9E2E1E8E3E2E9
          E3E2E9E3E2E9E2E2E9E4E1E9E5DFE9E5DFE9E5DFE9E5DFE9E5E0E8E5E0E8E4DF
          E9E5E0E9E5E0E9E5E0E9E5DFE9E5DEE8E4DEE8E4DCE8E4DCE8E4DCE8E4DCE8E4
          DCE9E4DCE9E4DCE8E5E1E5EEFFF7CE4AFDC313FBC81AEBE6ADFCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFED8EB1FF467FFD3A7AECAC
          BFE7FBF6EAE1E2EAE2E4EAE2E4E9E2E2E8E7E8E8EBEAE8E9E8E8E4E4E9E2E1E8
          E2E1E9E3E2E8E2E1E8E2E2E8E3E1E8E4E0E9E4DFE9E5E0E8E4DFE9E5E0E9E5E0
          E8E4DFE8E4DFE8E4DFE8E4E0E8E4E0E9E5E0E9E5E0E9E5DFE8E4DEE9E5DDE8E4
          DCE8E5DDE9E5DDE9E4DCE9E4DCE5ECFFF6CD58FDC514FBC819EBE5AEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFE9B0C7FF447FFD3C79EBA2C0E7F9
          F4EAE1E2EAE2E3EAE2E3E8E9E9E6F6F3ECCACAECBCBDEEC3C7EAE0DDE7F1F3E8
          EEEEEAE1E2E9E3E3E9E3E3E9E5E1E9E5E1EAE5E0EAE6E1E9E5E0EAE6E1EAE6E1
          E9E5E0E9E5E0E9E5E0E9E5E0E9E5E0EAE6E1EAE6E0EAE7DFEAE7DEEAE7DFEAE6
          DEE9E6DEEAE7DFEAE7DFEAE7DFEAE6DEE6ECFFF7CF52FBC519F8C525EDE9CFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D4DFF84B97FF4483F584ADE7FAF6EAE2
          E4EAE3E5E9E2E3E8EAEBEBDDDAFC6272FF586FFF5E73FF5D6DFF5F61FD7069EF
          B9B7E5FAFBEAE4E2EBE6E4EAE5E3E9E5E2E9E5E1E9E6E0E9E6E0E9E6E0E9E5E0
          E9E5E0E9E5E0E9E5E0EAE6E0E9E5E0E9E5E0E9E5E1E9E5DFE9E5E0E9E6DFE9E7
          DEE9E7DEE9E6DEE9E6DEE9E6DEE9E7DFEAE5DEE4EEFFFAC72AF6C224F3CD3CF0
          F7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF0FCF6F25BACF94198F76096E6FFF9EBE3E5EBE4
          E7EBE4E7EBE4E6E8EFEAFF4C68FF5F86FF6686FF6981FF6A7CFF6B79FF6E72FF
          5D5BF59C99E7F7F6EBE5E3EBE6E4EBE6E4EBE6E4EBE6E4EAE6E2EAE5E2EAE6E1
          EAE6E2EAE6E1EAE6E2EAE6E1EAE6E1EAE6E0EAE7E0EAE6E0EAE7E0EAE7DFEAE7
          E0EAE7E0EAE7E0EAE7E0E9E6DEEAE7DFE9E7DEE9E6E0E6E8F5FCC11AF6C124ED
          D87DF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFDFFFFE990C4F94195FB3488E7F5F2EBE6E7EAE3E6EBE4
          E7EBE3E6E8F2F2F490AAFF5383FF6488FF6485FF6683FF6980FF6C79FF6D77FF
          7274FF5955ECCFCDEAEBEAEBE5E3EAE5E3EAE5E3EBE5E4EBE5E4EBE6E3EBE6E4
          EBE6E3EBE6E2EAE8E6E9EFF5E9F0F8E9EEF4EAE9EAEBE7E3EBE6E1EBE7E1EBE8
          E1EBE8E1EBE8E1EBE8E1EBE8E1EBE8E1EAE7E0EAE7E0E9EAECEDE2BCF8BE1DF3
          C12AECE7C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEDDEEDF9419EF83890E8ACCCEAF2EFEBE3E7EBE4E7EAE3
          E6EBE2E5E6FDF8F5619BFF5D8CFF5F8EFF6387FF6387FF6782FF6980FF6B78FF
          6F75FF6B6CF88C87E9F4F3EAE5E3EBE6E4EBE6E4EAE6E2EAE6E2EAE7E2EAE7E2
          EBE6E1E7F2FDEAE1D6F4BD84F4BC77F3C287EDDCBDE8EFF5E9EEF5EBE7DFEBE8
          E0EAE7E0EAE7E0EAE7E0EAE7E0EAE7E0EBE8E1EBE8E1EBE7DFE8EFFEF6CF60F2
          C131F2D050F4F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8FFFDF075C8F4409AF3569DE9FFF7ECE4E7EBE4E7EBE4E7ECE5
          E8EBE3E7ECFFF9F3639DFF5992FF5F8EFF5F8EFF6388FF6387FF6782FF6A7DFF
          6C77FF6E72FC7773E6F6F4ECE8E5ECE8E6ECE8E6ECE8E6ECE8E5EBE7E4EBE7E3
          E8F3FCF4B780FF9121FE9C37FD9E3CFE9E32FE9C26FC991DF2C789E8F4FFEAE6
          E1EBE8E2EAE7E0EBE8E1EBE8E1EAE7E0EAE7E0EAE7E0EBE8E1EAE7E0E8F1FCF2
          B61EF2C02FEADAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEED9E8F043B0E938A1E9CCDCEDECECEDE5E8EDE6E9EDE6E9EDE6
          E9EDE5E8ECF4F1ED9ABDFF468EFF5C95FF5F8EFF608DFF6289FF6386FF6981FF
          697EFF6C77FD6863EBF2F0EBE8E6ECE8E6ECE8E6ECE8E6ECE8E6ECE7E5EAEEF2
          F1C7A7FF8D2FFCA04AFDA145FDA045FCA145FBA346FBA644FE9D26F4C37BE9F1
          F9EDEAE2EDEAE3ECE9E2EBE8E1EBE8E1ECE9E2EBE8E1EBE8E1EBE8E1ECEEF3ED
          CE92ECB736F1C448F4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFCFFFFED84CCEC40AAE94FA9EEFFF6ECE5E8ECE5E8ECE5E8ECE5E8ECE5
          E8EDE5E8ECE5E8EDF9F6EB4A87FF5196FF5D96FF5D93FF608DFF6289FF6485FF
          6981FF6A7CFD6469ECF4F1EBE8E6EBE7E5EBE7E5EBE7E5EBE7E5EBE7E5E9F3FB
          FB8F48FC9B4CFB9D4BFC9F48FD9F47FCA145FBA146FAA247F8A748FD9C21EBE1
          D1ECECE8ECE9E2EDEAE3EDEAE3EDEAE3EDEAE3EDEAE3EDEAE3EDEAE3ECEAE3EB
          ECEEEDB535EFB93AEDE9C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF1F2F3EE49B3E836A6EAC3DFECF0EFEDE7EAEDE7EAEDE6EAECE5E9EDE7
          EAECE6E9EDE5E8ECE9EAEBF7F4E96C9EF83981FE4A8EFF528EFF5C8EFF628AFF
          6486FF6880FD5D73ECF6F0EEE9E8EDE8E7EDE8E7ECE8E6EEE9E8EDE9E8EBECEE
          FE8C37FC9C4DFC9B4EFC9B4EFA9E4CFB9F4AF9A14BF7A34AF7A24BFCA036F2C2
          83ECF1F5EEEBE4ECE9E2EDEAE3ECE9E2ECE9E2EDEAE2ECE9E2ECE9E2ECE9E2ED
          F0F6EBCB7DECB53BEDC86EF8FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE8B8DBEE3EABDD36AAECFFF8EEE7EBEEE8ECEEE8ECEEE8ECEEE8ECEEE8
          ECEEE8ECEEE8ECEEE8ECEDE8EBEEFFFBE5E5E8E9B1C4EC7EA9EC5F92F64583FE
          5C85FF6688FD5E72ECF6EFEEE9E8EEE9E8EEE9E8EEE9E8EEE9E8EDE9E7EDF2F7
          FA8744F99B56FA9C4FFA9C4EFA9C4FF79E50F89E4EF8A14CF8A349F7A144EFB4
          6AEFF4F8EDEAE4EEEBE5EEEBE5EDEAE4EDEAE4EEEBE4EDEAE4EDEAE4EDEAE4EE
          ECE8EEE7DAE9B239E8B452F2F0E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE573C4DC3BBADF77C6F0FEF6EDE7EBEDE7EBEDE7EBEDE7EBEDE7EBEDE7
          EBEDE7EBEDE7EBEDE7EBEDE7EBEEE7EBEEEAEDEFF3F4EEF9F7EEFAF8EEF6F8E7
          7AA0FF628BF75B84ECF4F1EDE9E7EDE9E8EDE8E7EDE8E7EDE8E7EDE8E7EFF5FA
          ECA77FFA914EF89A5AF79C54F69D52F79D51F59E52F69F50F7A24DF8A043EFB2
          6CEEF5FBEDEAE3EDEAE4EDEAE4EDEAE4EDEAE4EDEAE4EDEAE4EDEAE4EDEAE4ED
          EAE4EFF4FBE9B954E7B147ECD8B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F1FFF5EB4BC8DB35B3E6C8DEEFEDEEEEE9EDEDE7EBEEE9EDEEE9EDEEE9EDEEE9
          EDEEE8ECEEE9EDEEE8ECEEE9EDEDE7EBEDE7EBEDE7EBEDE7EBEDE7EBEEEDEEEC
          E2E9F84F81F85B86ECF3F2EFEBEAEFEBEAEFEAE9EFEBEAEEEAE9EEEAE9EFEBEB
          ECF2F6DD8449F8924CFA995AF89D58F69F55F69F53F4A054F4A353F2A14BEEB3
          6BF0F6FCEEEBE5EEEBE5EEECE6EFEDE7EEECE6EEECE6EEEBE5EFECE6EEEBE5EE
          EBE5F0F4F9ECC889E5AF46E9CF89FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          ECDCE8E23AB9D439B9F1EBEEEFECEEEEE9EDEFE9EDEFE9EDEFE9EDEEEAEEEFEA
          EEEFEAEEEFEAEEEFEAEEEFEAEEEFEAEEEFEAEEEEE9EDEEE9EDEEE9EDEFEDEFED
          DCE3EE4C8EEF5B90EDF3F1EFEBEAEEEAE9EEEAE9EEEAE9EEEAE9EEEAE9EEEAE9
          F0EDEDEEF7FCDEAD8DE58B4FEF8945F38E47F49F4EF5A554F3A255F1A14CEDB3
          6BF0F6FCEEECE6EEEDE6EFEDE6EFEDE6EFEDE7EFEDE7EFEDE7EFEDE7EFEDE7EF
          EDE7EFEEECEFE1C8DF9E4EE5B66CF7F8FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EFB8EAD73CBFD34FBFF4FCF5EFEAEEEFEAEEF0EAEEEFE9EDEFE9EDEFEAEEEFE9
          EDEFEAEEEFEAEEEFE9EDEEE9EDEEE9EDEEE9EDEEE9EDEEEAEEEEE9EDEFEDF0EE
          DDE1ED449AEA5C93F0F4F6F0ECECEFEBEBEFEBEBEFEBEBEFEBEBEFEBEBEFEBEB
          EFEBEBEFEBEAF1F6FAF1F3F7E6DCD4E6BDA5DDA47ADA8647F1A04FF3A351E6B2
          6DF1F7FEEFEDE7EFEDE8EFEDE7EEECE7EFECE7EFECE7EEECE6EEECE6EFECE7EE
          ECE6EFEDE8F0F3F4DF9E48E6AF5CEFEFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DD92DCCB3EC7D870CAF4FCF5F0EAEEF0EAEEEFEAEEF0EBEFF0EBEEF0EAEEF0EA
          EEEFEAEEF0EAEEF0EBEFEFEAEEF1EBEFF1EBEFF0EAEEEFEAEEF0EAEEEFEDEEEB
          DDEEE8429EE853A4F0F5F5EFECEBEFECEBEFECEBEFEBEBF0ECECF0ECECEFEBEC
          F0ECECF0ECECEFEBEBF0ECECF1EFF0F1F3F5F2F8FFF1FFFFE4A973F5A652E7B0
          71F2F7FEF1EDE8F0EDE9F0EDE9F0EEE9F0EEE9F0EEE9F0EDE9F0EDE9F0EDE9F0
          EEE9F0EDE9F2F9FFE7A35CE3A85AEADCD2FFFFFFFFFFFFFFFFFFFFFFFFFDFFFC
          D476DBCE3DC5D894D7F5FAF5F0EBF0F1EBF0F1EBEFF1EBEFF1EBEFF1EBEFF1EB
          EFF1EBEFF1EBEFF1EBEFF1EBEFF1EAEEF1EAEEF1EAEEF1EBEEF1EAEEF1EEF0F2
          DEEBE041A7E352A9F1F5F5F1EBEFF0EBEDEFEBECF0ECECEFEBEBEFEBEBF0ECEC
          EFEBEBEFEBEBEFEBEBEFEBECF0ECEAEFEBEBF0ECE9F1F2F5E6CEBCE4A048E4B0
          78F2F7FDF0EDE9F1EEEAF1EEEAF1EEEAF1EEEAF1EEEAF1EEEAF1EEEAF1EEEAF1
          EDE9F0EDE8F3FEFFE4B275D79A64ECD4BAFFFFFFFFFFFFFFFFFFFFFFFFFAFFF9
          D568E2C93DC7DCA9DDF4F8F4F0EBF0F1ECF1F1ECF1F1ECF1F1ECF1F1ECF1F1EC
          F1F1ECF1F1ECF1F1ECF1F1ECF1F1EBF0F0EBF0F0EBF0F0EBEFF0EBF0F1EFF2F3
          DEE9D540B4D950B5F2F5F4F1ECEFF1EDEFF2EDEFF1EDEEF1EDEDF1EDEDF0ECED
          F0ECEBF0EDECF1EDECF1EEECF0EDECF1EEECF1EEECF3F4F6E6CBB8DD9D55E1AE
          7EF2F7FDF1EEEAF0EDEAF0EDE9F0EDE9F0EDE9F0EDE9F0EDE9F0EDE9F0EDE9F1
          EEEBF1EDEAF3F9FEE0B893D89A63E6CDB7FFFFFFFFFFFFFFFFFFFFFFFFF9FFF7
          D659E3BD36CEE1B8E9F4F6F3F0EBF0F0EBF0F1EBF0F1EBF0F1EBF0F1EBF0F1EB
          F0F1EBF0F1EBF0F1EBF0F1EBF0F0EBF1F1ECF0F0EBF0F0ECF1F0EBF1F1EFF1ED
          DDEDD040B8D24FBDF4F6F5F2EFEEF2EDEEF1EEEEF2EEEFF2EEEFF2EEEFF2EEEF
          F2EEEFF2EEEDF2EEEEF2EEEEF2EEEDF2EFEDF1EEECF4F4F5E5CDC0DB985AE0B0
          85F6F8FEF1EEECF2EFEDF2EFEDF2EFEDF2EFEDF2EFEDF2EFEDF2EFEDF2EFEDF2
          EFEDF1EEECF6F8FCDEBA9ED59765E5C3B0FFFFFFFFFFFFFFFFFFFFFFFFF8FFF7
          D55AE2BE35CDE2BFEAF4F7F4F1EDF2F1EDF3F0ECF2F0EDF3F0EDF3F0EDF2F0ED
          F3F0EDF2F0EDF2F0ECF2F0EDF2F1EDF3F1EEF2F1EDF2F2EEF2F2EEF2F2F1F2E9
          DDEFBE39C6CA4DC1F6F6F6F0ECF1F1EDF1F2EEF1F1EDEFF1EDEEF1EDEEF1EEEE
          F1EDEEF1EDEFF1EEEFF1EDEFF2EEEDF1EEECF1EEEDF4F4F5E5CDC0D69763DBAE
          8EF6F9FDF1EEECF2EFEDF2EFEDF1EEECF1EEECF1EEECF1EEECF1EEEDF2EFEDF1
          EEECF1EEECF5F7FAE0C0ACCF8F6AE3C2B0FFFFFFFFFFFFFFFFFFFFFFFFF8FFF6
          D459E3B539D4DFBAEAF5F8F4F1EDF1F2EEF1F1EDF2F1EDF2F1EDF2F1EDF2F1ED
          F2F1EDF2F1EDF2F1EDF2F1EDF2F2EEF1F1EDF2F1EDF2F1EDF1F1EDF1F3F1F3EA
          DDEFB63FC9BD4FC8F7F5F6F3F0F2F2EEF1F3EFF2F2EEF2F2EEF1F2EEF1F2EFF0
          F2EFEEF2EFEEF2F0EEF2EFEEF3F0EFF2EFEEF2EFEEF5F5F7E6CEC1CF8F6DD8AA
          8FF7FAFDF2EFEEF3F0EEF3F0EFF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF3F0EEF2
          EFEEF2EFEEF7F9FCDEBDA9CF8E6DE3C2B0FFFFFFFFFFFFFFFFFFFFFFFFFAFFF7
          CD65E6AE38D7DBB6E9F6F9F4F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F2EE
          F2F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F2EEF2F3F2F3EC
          DDEDAB3CD3B54ECFF7F5F5F3F0F3F3EEF2F3EEF3F3EEF2F3EFF1F3EEF2F3EEF2
          F3EEF2F3EEF2F3EEF1F2EFF0F2EFF0F2F0EEF2EFEEF6F6F7E2CAC2CA8B78D4A9
          9AF9FBFDF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2EFEEF2
          EFEEF2EFEEF9FBFDD7B3A6C98A78E5C1B8FFFFFFFFFFFFFFFFFFFFFFFFFCFFF9
          CB6DE6AE38D6CD9CE5FAFCF7F2EFF4F3F0F4F3EFF3F3F0F4F3F0F4F3EFF3F3F0
          F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3EFF3F4F4F5EF
          DDEEA43DD7AB4DD8F8F7F4F3F1F4F3F0F4F3F0F4F3EFF3F2EFF3F2EEF2F2F0F2
          F4F0F0F3F0F1F3F0F1F4F1F0F4F1F0F4F1F1F3F0F0F7F7F8E1C7CFC48181D2A9
          A3FAFDFDF3F0F0F4F1F1F4F1F1F4F1F0F4F1F0F4F1F1F3F0F0F3F0F0F4F1F0F4
          F1F0F3F0F0FCFFFFD4A19DC98B7AE6C8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
          C87FE6B138D7CA88DDFAFFF7F2EFF3F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0
          F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F3F0F4F5F3F4E7
          DFF49D3EDCA74DDBF9F7F3F3F1F4F3F0F4F2EFF3F2EFF4F3F0F4F3F0F4F3F0F4
          F2EFF3F2EEF3F3EFF3F3F0F2F5F2F2F4F1F1F4F1F1F7F7F8E2CAD4BF7E87CCA1
          ACFBFEFDF3F0F0F3F0F0F3F0F0F3F0F0F3F0F0F3F0F0F3F0F0F3F0F0F3F0F1F3
          F0F0F3F0F0FDFFFFCB8D92C88C8AE7CED3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          CEA6F09E3CE0B464DEFDFFF8F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F2EF
          F3F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F2EFF3F4F4F4E9
          E0F39139E2974BE4F6F8F5F3F0F3F2EFF3F2EFF5F3F0F4F4F1F6F4F1F6F4F1F6
          F4F1F6F3F1F5F4F1F4F5F2F2F5F2F2F5F2F2F5F1F2F8FAF9E3CAD2B77392CDA1
          AAFCFFFEF4F1F2F4F1F2F4F1F2F4F1F2F4F1F2F4F1F2F4F1F3F4F1F2F4F1F3F4
          F1F3F4F1F2FCFFFFBE7C86C58890E8DEE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EAC7ED9D3CE09643E3FAFCF7F4F1F5F3F0F5F3F0F4F3F0F5F3F0F4F3F0F5F3F0
          F4F3F0F5F3F0F5F3F0F5F3F0F4F3F0F4F3F0F4F3F0F5F3F0F5F3EFF4F5F4F5EA
          E0F28B36E6934AE5FAFCF6F3F1F5F3F0F5F3F0F6F4F1F6F4F0F6F4F1F6F4F1F6
          F3F0F6F4F1F6F3F0F6F4F1F6F4F1F5F5F2F4F4F1F4F9F9FADCC5D9B06F9FC99C
          B6FCFFFDF4F1F2F5F2F3F5F2F3F5F2F3F5F2F3F5F2F3F5F2F2F5F2F3F5F2F3F5
          F2F2F5F3F4F4EDF0BA7784CA8D9DF5F3F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EDF3ECA640ED9936DEEBE1F5F5F4F6F4F0F6F4F0F6F4F1F6F4F1F6F4F0F6F4F1
          F6F4F1F6F4F1F6F4F1F6F4F0F6F4F1F6F4F0F6F4F1F6F4F0F6F4F1F6F6F5F6E9
          DFF37E3EEE894EEEE4DAF5FFFFF7FFFFF8FDFDF7F6F5F6F4F2F5F3F0F5F3F0F5
          F3F0F5F4F1F5F3F0F5F4F1F5F3F0F6F4F0F6F5F2F4FBFBF9D9C3DDAD6EA9C196
          BBFFFFFEF5F2F4F6F3F5F6F3F5F6F3F5F6F3F5F6F3F5F6F3F4F6F3F5F6F3F5F5
          F2F4FAFBFCDEC4CDB9788FCF9BAFFBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF6AD5DE98E39E5CDA7EDFAFFF7F3F2F5F3F3F5F3F3F5F3F3F5F3F2F5F3F3
          F5F3F3F5F3F3F5F3F3F5F3F2F5F3F3F5F3F3F5F3F3F5F3F3F5F3F3F5F6F7F5E4
          DFF77B3FEF8B5DF47C47F0905BF0A378EBC3AFEEE7D5F3FCFEF9FFFFF9FFFFF9
          FAFBF8F7F8F7F5F4F6F3F3F5F3F2F5F3F2F5F5F2F4FAFBFADBC3DCA765ADBD93
          BCFFFFFFF5F2F4F5F2F4F5F2F4F5F2F4F5F2F4F5F2F4F5F2F4F5F2F4F5F2F4F5
          F2F4FFFFFFCA98B1B7799EDAB3C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFC190EB9047E99D50E2FFFFFAF4F2F6F5F3F7F5F2F7F5F2F7F4F2F6F5F2
          F7F5F2F7F5F2F7F5F2F7F5F2F7F5F2F7F5F2F7F5F2F7F5F2F7F5F2F7F8F6F7E6
          DFF76D40F1845DF3855CF2825AF27F5CED7954E9754CE37C50E28A5BE4AC8EE5
          D0B8ECE6DAF1F7F5F8FFFFFAFFFFFAFCFDFAF8F7F8FBFDFBDDC9DDA35DB3BC91
          C8FFFFFFF6F3F5F6F4F6F7F4F6F7F4F6F7F4F6F7F4F6F7F4F6F7F4F6F7F4F6F7
          F4F6FAFAF8B8799EBC7EA2EADBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE0D5EB9B44EE7F2FE8F3F4F8F6F6F7F4F2F6F5F3F7F4F3F6F5F3F7F4F3
          F6F4F3F6F4F3F6F5F3F7F5F3F7F5F3F7F5F3F7F5F3F7F5F3F7F5F3F7F8F7F7E7
          DEF66541F77E5FF97F5DF87F5DF37F5FEF8161EE8462EC8562EA8664E6855EE3
          8458DB8657DA895BD69E76D8B593E4CBB8E5E7DFF2FFFFFEC3A4DAA264BEB98E
          CEFFFFFEF6F3F5F7F3F6F7F3F5F7F3F5F7F3F6F7F3F5F7F3F5F7F3F5F6F3F5FB
          FCFAE1C8DFB06FA7BE87B9F6F7F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBFFF6A364EE8144EDAE85ECFFFFFAF5F4F7F6F5F8F5F5F7F6F5F8F5F5
          F7F5F5F7F5F5F7F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F9F9F8E7
          DEF66241F7745EF9775EF7795EF8775EF57A60F17C60F08060EE8361EC8663E8
          8964E68C67E28F67E09165DC8F63D79060D6905BCE975BC8995FCAA169C7B68A
          D1FFFFFEF5F4F7F5F4F8F5F4F7F5F4F7F5F4F8F5F4F6F5F4F7F6F5F8F6F5F8FF
          FFFFBA85B9B273ABD4B2D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC6B1E77B43F07B41EDFCFCF6F8F7F9F6F5F8F6F5F8F6F5F8F6F5
          F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F5F4F7F9F8F8E3
          E1F55D40F9715CFE725CFB715EF8755EF7765EF6775EF5795FF17E60F08161EE
          8562EA8664E88865E58C66E29168DE9268DD956BDA986ED89C6DD49A66D0B089
          D8FFFFFEF5F4F7F6F5F8F5F4F8F6F5F8F6F5F8F7F6F9F7F5F8F7F5F8F9F9F9ED
          E0F0A35FB1B276B3F0E6EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF3F3F28A55EE773EEFB192F0FFFFF9F6F5F9F7F6F9F7F6F9F7F6
          F9F7F6F9F7F6F9F7F6F9F7F6F9F7F6F9F7F6F9F7F6F9F7F6F9F6F5F8FAF9F9E2
          E2F45140FA705DFE6F5CFE705BFD705CFC705EF9745DF8765DF67960F27A60F1
          8061EE8261ED8563E98965E58A66E48E67E09268DD9369DA956BD99468D6AB82
          DBFFFFFEF7F6F8F7F6F9F7F6F9F8F7F9F8F7F9F8F7F9F8F7F9F7F6F8FFFFFFB6
          7EC0A86AB9C395CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEBEA8EB7D41EE6A3CF1F4F4F9F9F9F9F7F6F8F6F5F8F6F5
          F8F7F6F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8F6F5F8FCFBF9E0
          E1F54E40FC6A5EFF685DFF685DFF6B5CFE6E5DFB6F5EF9725DF8765DF7785FF4
          7960F17D60F08361EC8562E98764E78965E58D66E19167DE9369DC9063D8AA81
          DCFFFFFDF7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8F7F6F8FDFEFCE3D9EEA1
          5CAEAD6DBDE4E1EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFAFFF38359F16C46F4856BF4FFFFF9F7F7F9F8F7F9F8F7
          F9F7F7F9F8F7F9F8F7FAF8F7FAF8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F9F9F9FE
          FDFA4535EF5C4FFE6459FF695CFF6A5EFF695EFF6B5DFE6F5DFA705EF9755DF7
          775EF57960F17D60F08061EE8361EC8664E88764E78A65E38E67E18C62DFA982
          DEFFFFFDF8F7F8F8F7F9F8F7F9F8F7F9F8F7F9F8F7F9F8F8F9FFFFFE9E5DC7A4
          68C0C1A6DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFD3C7E86C4AF65F39F4BFB4F7FFFFFAF7F7FAF8F8
          FAF8F8FAF8F8FAF8F8FAF8F8FAF8F8FAF8F7FBF7F7FBF8F7FBF8F8FAF8F8FAFE
          FEFBE8E5F7928CE96D64E8574AEB4840F35243F75C54FF675AFF6D5DFE705FFB
          745EF8775FF5795FF27A60F18061EF8160EB8662EA8664E88A66E4885EE0A07D
          E2FFFFFDFAF9F9FAF9FAFAF9FAFAF9FAFAF9FAFAF9F9FFFFFFB692D89B5FC2A9
          73CEF3F1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA688EB6D49F6553AF5EEE9F6FFFFFAF9F9
          F9F9F9F9FAF9F9FAF9F9F9F9F9FAF9F9F9F9F9FAF9F9F9F9F9F9F8FAF9F8FAFA
          F9F9FEFDFAFFFFFCFFFFFCFFFFFBE8E6F4C4C0F09088E7675DE65347E94D3DEF
          5C4BFA6C56FA715AFA7A5FF37C60F27F61F08262ED8462EB8764E7845FE49F7D
          E3FFFFFDF8F8FAFAF9F9FAF9FAFAF9FAF9F8F9FFFFFED8C6EB9051C49A5EC5DC
          CFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEF18670F3674DF85A43F7FCFBF9FDFC
          FBF7F8FBF7F7FAF7F7FAF8F7FAF7F7FBF7F7FAF8F8FBF7F7FAF7F7FAF8F7FAF8
          F8FBF7F7FAF7F7FAF8F8FAFAF8FAFBFBFBFFFFFCFFFFFEFFFFFEFFFFFCE9EAF7
          BCB6EB8C87E87465E66151E86046E6674FF07353EF7D5DF08462ED825EEA9A79
          E4FFFFFDFAF8F9FAF8F9FAF8F9F9F8F9FFFFFCECE1FA874AC89861CFC1A5E1FF
          FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E1EC604CFC5E4AF95B53FAFFFF
          F8FEFEFBFAF9FBFAF9FBFAF9FBFAF9FBFAF9FBFAFAFCF9F9FBF9F9FBFAF9FBFA
          FAFCFAF9FBFAFAFBFAF9FBFAF9FBFAF9FBFAF9FBF9F9FBF9F9FBFAFAFBFDFDFC
          FFFFFEFFFFFFFFFFFDFCFBFAE5E1F2BCB9EE9E8BE37F70E66E47DF643CDCB09A
          E7FFFFFEF9F9FBFAF9FAF9F9FBFFFFFDECE4F9864DD3935FD1AA7FE4FAFEF6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D1E95F4FFC5E49FA5255
          FCFFFFF9FFFFFBF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9
          F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FCF9F9FC
          F9F9FBF9F9FBF9F9FCFBFBFCFEFFFDFFFFFEFFFFFEFFFFFEFFFFFBF8F8F8FFFF
          FDFAFAFBF9F9FCF9F9FCFFFFFEEDE1F9874DD38E59D4A174DCF3F3F1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D3E95E54FD554E
          FC4544FEE6E6FBFFFFFCFAFAFBFAFAFCFAFAFCFBFBFCFBFBFCFAFAFCFAFAFCFA
          FAFCFAFAFCFAFAFCFBFBFCFBFBFCFBFBFCFAFAFCFAFAFCFAFAFCFAFAFCFAFAFC
          FAFAFCFAFAFCFAFAFCFBFBFCFAFAFBFAFAFBFAFAFBFAFAFBFBFBFCFCFCFCFBFB
          FCFBFBFBFBFBFBFFFFFFDCCDF07A41D28B5BDA9D6FD9F7F9F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED7D4EA5850
          FE524EFD3B3DFDBCBCFCFFFFFCFDFDFCFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFA
          FAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFB
          FAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFAFBFAFA
          FBFFFFFCFFFFFFB29AEE7846DB8657DF9F75E3F3F4F0FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD9
          ED6968F84F4DFE3E3EFE7474FAFFFFFBFFFFFCFDFDFCFBFBFCFBFBFCFBFBFCFB
          FBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFCFCFDFBFBFCFBFBFCFBFBFCFBFBFC
          FBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFBFBFCFEFEFCFFFF
          FFF6EEFC7D55E3784CDF7E4FDEAB8EE6F4F3F4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFCFCEE8783F3494CFF464AFF3437FDA5A7FAFFFFFBFFFFFDFFFFFDFBFBFDFB
          FBFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
          FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFBFBFDFCFCFDFFFFFDFFFFFFF7F5FDA18B
          EB653AE17955E88154E4C0ADE8FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF6BFBDED5C64FA4652FF3D46FF474DFC989AFCF6F3FCFFFFFDFF
          FFFDFEFEFDFCFBFDFBFBFDFBFBFDFBFBFDFBFBFCFBFBFDFBFBFDFBFBFDFBFBFC
          FBFBFCFBFBFDFBFBFCFCFCFDFFFFFDFFFFFEFFFFFEE9E9FA9E8AEF6644E9764E
          E4754FEA917EEBE3DFEDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEF7F5F1A0A1EC4C54FF4450FF424CFF3D41FE6B6EFCBE
          C1FBFAF7FBFFFFFDFFFFFCFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFFFFFDF3F3FAB9AAF77463F66145EF634BEC654EF07D62
          F0C3B9EAFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6F3EC9E9EF15963FB4551FF4651FF3A
          42FF333BFE4A4EFD8386FCA8A9FCC3C1FCD6D5FADFDEFBDFDEFBDDDCFAD3D1FB
          BCBAFAA5A3FC7F78F9564AF44739F55843F2654FEF6652F2856CEFBEBBEEFDFF
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFAF2C7C6ED8388F25D
          64FA4551FF4450FF414CFF3B44FF3740FF3C45FF3E43FE3F42FE3F42FE4441FD
          423FFE4B43FB554BF6584DF75A52F8736AF5A49EEFD7D7EFFFFFF5FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFA
          F8F3E0DDEBAEAFEF8D92ED7174F46167FC505AFE4D58FF4651FF4E56FE625EFD
          6A67F9807AF19F9BECC3BEECE8E8EEFEFDF6FFFFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFF3FFFFF0FFFFEEFFFFEEFFFFEEFFFFF0
          FFFFF5FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 8
        OnClick = MainSelectionBtn1Click
      end
      object MainSelectionBtn2: TSpeedButton
        Left = 0
        Top = 114
        Width = 406
        Height = 108
        Caption = '?!Scan your folders for MP3 files and create your websites'
        Glyph.Data = {
          F62D0000424DF62D0000000000003600000028000000400000003D0000000100
          180000000000C02D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          1C1C1C2727272828282828282828282828282828282828282828282828282828
          2828282828282828282828282828282828282828282828282828282828282828
          2828282828282828303030424242545454666666A3A3A3C6C6C6F8F8F8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000080808
          5C5C5CCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0F0F868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000008D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000181818E7E7E7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000B9B9B9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000AFAFAFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C8C8
          C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          001E1E1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000001F1F
          1FFDFDFDF4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
          F3F3F6F6F6D5D5D5BFBFBFA7A7A78F8F8F4D4D4D090909000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003D3D
          3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D13D3D3D000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000646464FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EEEEEE0000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBCBCBC0000000000000000000000000000000000000000000000000000
          00000000000000000000717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4848480000000000000000000000000000000000000000000000
          000000000000000000000F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE6E6E60000000000000000000000000000000000000000000000
          00000000000000000000000000C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF2727270000000000000000000000000000000000000000
          00000000000000000000000000636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9898980000000000000000000000000000000000000000
          000000000000000000000000000E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE8E8E80000000000000000000000000000000000000000
          00000000000000000000000000000000FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0606060000000000000000000000000000000000
          00000000000000000000000000000000B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF3535350000000000000000000000000000000000
          000000000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDADADAD777777999999
          E1E1E1FFFFFFFFFFFFFFFFFF7373730000000000000000000000000000000000
          00000000000000000000000000000000434343FFFFFF5E5E5E4646464B4B4B4B
          4B4B4B4B4B4B4B4B4B4B4B4B4B4B4A4A4A3E3E3EE3E3E3FFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADAD000000000000000000000000
          0000004C4C4CFFFFFFFFFFFF90909000000000000000000000000065657EFFFF
          FF9292B8000000000000000000000000262626FFFFFF62626200000000000000
          0000000000000000000000000000000000000000D6D6D6FFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC000000000000000000161616000000
          0000000000003E3E3EFFFFFFB5B5B5000000000000000000000000F1F1FDFFFF
          FFFFFFFF000000000000000000000000050505FFFFFFE4E4E400000000000000
          00001414141B1B1B161616161616151515070707D9D9D9FFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF1C1C1C000000000000A1A1A1FFFFFFE9E9E9
          000000000000000000E1E1E1D1D1D10000000000000000002C2C3AFFFFFFFFFF
          FFFFFFFF5C5C76000000000000000000020202FFFFFFFFFFFF6F6F6F00000000
          0000232323FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFCFC0000000000001C1C1CFFFFFFFFFFFFFFFFFF
          7F7F7F0000000000007D7D7DDDDDDD000000000000000000B1B1BFFFFFFF8E8E
          9FFFFFFFD9D9ED000000000000000000000000FEFEFEFFFFFFFFFFFF31313100
          00000000001B1B1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3EFEFEFFFFFFFFFFFFFFFFFFF
          989898000000000000696969FFFFFF000000000000000009FFFFFFFFFFFF0000
          00F4F4F5FFFFFF141437000000000000000000E5E5E5FFFFFFFFFFFFFFFFFF24
          24240000000000000D0D0DF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          3B3B3B000000000000B9B9B9FFFFFF00000000000060607CFFFFFFB0B0CB0000
          008D8DA4FFFFFF8F8FA0000000000000000000E7E7E7FFFFFFFFFFFFFFFFFFFF
          FFFF3C3C3C000000000000000000F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADAD6F6F6F454545
          0000000000004D4D4DFFFFFFFDFDFD000000000000E9E9FDFFFFFF4444600000
          00202034FFFFFFFFFFFF000000000000000000E7E7E7FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF3C3C3C0000000000000C0C0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F000000000000
          000000B0B0B0FFFFFFFFFFFFFDFDFD0000001B1B37FFFFFFFFFFFF0000000000
          00000000E3E3FAFFFFFF484865000000000000E5E5E5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF404040000000000000787878FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD2C2C2C000000
          0000000F0F0FF9F9F9FFFFFFFFFFFF0000006A6A8AE4E4E093939B0000000000
          000000006D6D81E2E2DE9C9CB1000000000000F6F6F6FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB
          0000000000004A4A4AFFFFFFCDCDCD0000000000000000000000000000000000
          00000000000000000000000000000000020202FFFFFFD7D7D7898989626262D6
          D6D6FFFFFFFFFFFFFFFFFF2F2F2F000000000000DADADAFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF8888882F2F2F2C2C2CFFFFFFFFFFFFFFFFFF
          000000000000000000FFFFFFC9C9C90000000000000000000000000000000000
          00000000000000000000000000000000050505FFFFFFA7A7A700000000000074
          7474FFFFFFFFFFFFFFFFFF191919000000000000E8E8E8FFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6565650000000000009F9F9FFFFFFFB8B8B8
          000000000000171717FFFFFFB5B5B50000000000000000000000000000000000
          00000000000000000000000000000000111111FFFFFFFFFFFF00000000000000
          00006F6F6FAFAFAF4747470000000000000A0A0AFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2000000000000000000000000000000
          000000000000B3B3B3FFFFFF9090900000000000000000000000000000000000
          00000000000000000000000000000000313131FFFFFFFFFFFFA2A2A200000000
          0000000000000000000000000000000000E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2050505000000000000000000
          0000008D8D8DFFFFFFFFFFFF7373730000000000000000000000000000000000
          00000000000000000000000000000000585858FFFFFFFFFFFFFFFFFFD9D9D93B
          3B3B0404040000000909094C4C4CF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB979797B9B9B9
          FFFFFFFFFFFFFFFFFFFFFFFF3535350000000000000000000000000000000000
          000000000000000000000000000000008C8C8CFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0606060000000000000000000000000000000000
          00000000000000000000000000000000BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE1E1E10000000000000000000000000000000000000000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF7B7B7B0000000000000000000000000000000000000000
          000000000000000000000000000E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF1111110000000000000000000000000000000000000000
          00000000000000000000000000636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003A3A
          3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA7A7A70000000000000000000000000000000000000000000000
          00000000000000000000000000C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000003636
          36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0101010000000000000000000000000000000000000000000000
          00000000000000000000030303FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0101010E0E0E0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0707074747
          47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF4646460000000000000000000000000000000000000000000000000000
          000000000000000000006E6E6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F7F0000000000000000000000000000000000000000000000000000000000
          00000000000000000000F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF474747
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1878787000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FAFF
          B9EBFFBFEDFFBFEDFFBFEDFFBFEDFFBFEDFFBFEDFFBFEDFFBFEDFFBFEDFFB5E9
          FFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
          F1F1F6F6F6D5D5D5BFBFBFA7A7A7727272323232000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000007C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDC7FF
          004AFF0056FF0056FF0056FF0056FF0056FF0056FF0056FF0056FF0052FF006B
          FFFFFFFFFFFFFFFFFFFFFFFFFF12121200000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00181818FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000BFBF
          BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000888888FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000A8A8A8FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000C7C7C7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000535353FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3CDFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0678
          FFFFFFFFFFFFFFFFFFFFFFFFFF29292900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000333333CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2CCFF
          0059FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0066FF0062FF0578
          FFFFFFFFFFFFFFFFFFFFFFFFFF25252500000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          181818787878EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0CDFF
          004AFF0056FF0056FF0056FF0056FF0056FF0056FF0056FF0056FF0052FF006B
          FFFFFFFFFFFFFFFFFFFFFFFFFF4242421515151B1B1B1B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1B1A1A1A1F1F1F2828283A3A3A4E4E4E6666669C9C9CC5C5C5FCFCFC
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
          F0F0FFF3F2FFF3F2FFF3F2FFF3F2FFF3F2FFF3F2FFF3F2FFF3F2FFF3F2FFEFF3
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 8
        OnClick = MainSelectionBtn2Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 16
    object File1: TMenuItem
      Caption = '??File'
      object Setup1: TMenuItem
        Caption = '??Setup'
        ShortCut = 16464
        OnClick = Setup1Click
      end
      object Exit1: TMenuItem
        Caption = '??Exit'
        ShortCut = 16465
        OnClick = Exit1Click
      end
    end
    object Extra1: TMenuItem
      Caption = '??Extra'
      object UploadtoFTP1: TMenuItem
        Caption = '??Upload to FTP'
        OnClick = UploadtoFTP1Click
      end
      object Showfoundgenres1: TMenuItem
        Caption = '??Show found genres'
        OnClick = Showfoundgenres1Click
      end
    end
    object Help1: TMenuItem
      Caption = '??Help'
      object CheckforUpdate1: TMenuItem
        Caption = '??Check for Update'
        OnClick = CheckforUpdate1Click
      end
      object GitHubMenuEntry: TMenuItem
        Caption = '??Website at Github'
        OnClick = GitHubMenuEntryClick
      end
      object WebsiteofAuthor1: TMenuItem
        Caption = '??Website of Author'
        OnClick = WebsiteofAuthor1Click
      end
      object AboutMP3Toolbox1: TMenuItem
        Caption = '??About MP3Toolbox'
        OnClick = AboutMP3Toolbox1Click
      end
    end
  end
  object FolderScanPopupMenu: TPopupMenu
    OnPopup = FolderScanPopupMenuPopup
    Left = 362
    Top = 17
    object checkfilenames1: TMenuItem
      Caption = 'check filenames for unallowed characters'
      OnClick = checkfilenames1Click
    end
    object checkfilenamesforallowedlength1: TMenuItem
      Caption = 'check filenames for allowed length'
      object Joliet601: TMenuItem
        Caption = 'Joliet (64)'
        OnClick = Joliet601Click
      end
      object ISO9660Level1121: TMenuItem
        Caption = 'ISO 9660-Level 1 (12)'
        OnClick = ISO9660Level1121Click
      end
      object ISO9660Level2311: TMenuItem
        Caption = 'ISO 9660-Level 2 (31)'
        OnClick = ISO9660Level2311Click
      end
      object Romeo1281: TMenuItem
        Caption = 'Romeo (128)'
        OnClick = Romeo1281Click
      end
    end
    object checkfilenamesfornoof1: TMenuItem
      Caption = 'check filenames for allowed no. of '#39'-'#39
      OnClick = checkfilenamesfornoof1Click
    end
    object Speichernunter1: TMenuItem
      Caption = 'Speichern unter ...'
      OnClick = Speichernunter1Click
    end
  end
  object Pacman_Move_Timer: TTimer
    Enabled = False
    OnTimer = Pacman_Move_TimerTimer
    Left = 328
    Top = 48
  end
  object SaveDialog_File: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'textfiles (txt)|*.txt'
    FilterIndex = 0
    Title = 'Speichern'
    Left = 432
    Top = 16
  end
  object Template_OpenDialog: TOpenDialog
    FilterIndex = 0
    Left = 544
    Top = 16
  end
  object Result_File_SaveDialog: TSaveDialog
    FilterIndex = 0
    Title = 'Speichern'
    Left = 616
    Top = 16
  end
  object OpenDialog_FileSelect: TOpenDialog
    FilterIndex = 0
    Left = 480
    Top = 16
  end
  object XMLDocumentiTunesImport: TXMLDocument
    Left = 752
    Top = 16
    DOMVendorDesc = 'MSXML'
  end
  object FtpUpload: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 664
    Top = 16
  end
  object XMLDocumentUpdate: TXMLDocument
    Left = 712
    Top = 16
    DOMVendorDesc = 'MSXML'
  end
end
