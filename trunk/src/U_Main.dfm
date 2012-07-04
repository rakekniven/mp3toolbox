object F_Main: TF_Main
  Left = 95
  Top = 128
  Caption = 'F_Main'
  ClientHeight = 720
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
    720)
  PixelsPerInch = 96
  TextHeight = 16
  object SearchResultLab: TLabel
    Left = 8
    Top = 401
    Width = 95
    Height = 16
    Caption = 'SearchResultLab'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 3
    Width = 790
    Height = 393
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '??mp3list'
      DesignSize = (
        782
        362)
      object Pacman_Btn: TSpeedButton
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
      object Dir_Count_Label: TLabel
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
        ExplicitLeft = 698
      end
      object Result_Label: TLabel
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
      object Label1: TLabel
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
        OnClick = Label1Click
        ExplicitLeft = 571
      end
      object Label2: TLabel
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
      object Label3: TLabel
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
      object Label4: TLabel
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
      object Label5: TLabel
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
      object Lab_Scan_Result: TLabel
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
      object Lab_Scan_Time: TLabel
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
      object Search_Time_Lab: TLabel
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
      object Multi_Dir_GroupBox: TGroupBox
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
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
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
      object TXT_Output_Btn: TBitBtn
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
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = TXT_Output_BtnClick
      end
      object HTML_OutputButton: TBitBtn
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
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnClick = HTML_OutputButtonClick
      end
      object Go_Btn: TBitBtn
        Left = 569
        Top = 14
        Width = 185
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = '??Go !'
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnClick = Go_BtnClick
      end
      object Pacman_Panel: TPanel
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
        object Pacman_Speed_Edit: TEdit
          Left = 10
          Top = 11
          Width = 50
          Height = 24
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          TabOrder = 0
          OnChange = Pacman_Speed_EditChange
        end
        object Start_Pacman_Btn: TButton
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
          OnClick = Start_Pacman_BtnClick
        end
        object Close_Pacman_Btn: TBitBtn
          Left = 108
          Top = 15
          Width = 51
          Height = 26
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'close'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 15
          Font.Name = 'arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 2
          OnClick = Close_Pacman_BtnClick
        end
      end
      object Search_ProgressBar: TProgressBar
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
    object TabSheet3: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'cdlist'
      ImageIndex = 2
      TabVisible = False
      OnShow = TabSheet3Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        782
        362)
      object CDList_Result_Label: TLabel
        Left = 609
        Top = 142
        Width = 151
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taCenter
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '...'
        Color = clBackground
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = 13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpVariable
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        ExplicitLeft = 611
      end
      object CDList_ProgressBar: TProgressBar
        Left = 609
        Top = 90
        Width = 151
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Step = 5
        TabOrder = 3
      end
      object CDListe_StringGrid: TStringGrid
        Left = 0
        Top = 216
        Width = 778
        Height = 142
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        ColCount = 1
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 15
        Font.Name = 'arial'
        Font.Pitch = fpVariable
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        TabOrder = 0
      end
      object HTML_OutputButton3: TBitBtn
        Left = 609
        Top = 34
        Width = 151
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        Caption = 'create &website'
        DoubleBuffered = True
        Enabled = False
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
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = HTML_OutputButton3Click
      end
      object CDLIst_Choose_GB: TGroupBox
        Left = 0
        Top = 9
        Width = 593
        Height = 179
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        DesignSize = (
          593
          179)
        object Choose_CDList_Source_File_Btn: TSpeedButton
          Left = 415
          Top = 25
          Width = 50
          Height = 30
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
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
          OnClick = Choose_CDList_Source_File_BtnClick
          ExplicitLeft = 417
        end
        object Result_File_SpeedButton: TSpeedButton
          Left = 415
          Top = 140
          Width = 50
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
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
          OnClick = Result_File_SpeedButtonClick
          ExplicitLeft = 417
        end
        object CDList_Template_SpeedButton: TSpeedButton
          Left = 415
          Top = 81
          Width = 50
          Height = 31
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
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
          OnClick = CDList_Template_SpeedButtonClick
          ExplicitLeft = 417
        end
        object CD_List_Open_File_Lab: TLabel
          Left = 10
          Top = 4
          Width = 124
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Which file to read in :'
        end
        object CDList_Template_Label: TLabel
          Left = 10
          Top = 59
          Width = 63
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Template :'
        end
        object Result_File_Label: TLabel
          Left = 10
          Top = 118
          Width = 65
          Height = 16
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Result file :'
        end
        object CDList_Source_File_CB: TComboBox
          Left = 10
          Top = 25
          Width = 397
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          DropDownCount = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          PopupMenu = CDList_Popup
          TabOrder = 1
        end
        object Go_Btn3: TBitBtn
          Left = 473
          Top = 25
          Width = 110
          Height = 30
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
          Caption = 'Go !'
          DoubleBuffered = True
          Enabled = False
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
          NumGlyphs = 2
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = Go_Btn3Click
          OnMouseDown = Go_Btn3MouseDown
        end
        object CDList_Template_ComboBox: TComboBox
          Left = 10
          Top = 81
          Width = 397
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          DropDownCount = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Result_File_ComboBox: TComboBox
          Left = 10
          Top = 140
          Width = 397
          Height = 21
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          DropDownCount = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 13
          Font.Name = 'arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Error'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ListBox_Error: TListBox
        Left = 0
        Top = 0
        Width = 782
        Height = 362
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = '??iTunes import'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        782
        362)
      object Label7: TLabel
        Left = 19
        Top = 12
        Width = 92
        Height = 16
        Caption = '??Which xml file'
      end
      object Lab_Scan_Time3: TLabel
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
      object Label9: TLabel
        Left = 569
        Top = 300
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
        Visible = False
        ExplicitLeft = 571
      end
      object Label10: TLabel
        Left = 569
        Top = 280
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
        Visible = False
        ExplicitLeft = 571
      end
      object Label11: TLabel
        Left = 569
        Top = 260
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
        Visible = False
        ExplicitLeft = 571
      end
      object Label12: TLabel
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
      object Label13: TLabel
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
      object Label14: TLabel
        Left = 696
        Top = 260
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
        Visible = False
        ExplicitLeft = 698
      end
      object Label15: TLabel
        Left = 696
        Top = 279
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
        Visible = False
        ExplicitLeft = 698
      end
      object Label16: TLabel
        Left = 696
        Top = 300
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
        Visible = False
        ExplicitLeft = 698
      end
      object Lab_Scan_Time4: TLabel
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
      object Btn_XML_File_Select: TSpeedButton
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
        OnClick = Btn_XML_File_SelectClick
      end
      object Go_Btn2: TBitBtn
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
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = Go_Btn2Click
      end
      object HTML_OutputButton2: TBitBtn
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
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnClick = HTML_OutputButtonClick
      end
      object CB_XML_File: TComboBox
        Left = 19
        Top = 34
        Width = 374
        Height = 24
        TabOrder = 2
        Text = 't:\Zuletzt hinzugef'#252'gt.xml'
      end
    end
  end
  object NameCheck_ListBox: TListBox
    Left = 7
    Top = 448
    Width = 732
    Height = 251
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    OnMouseUp = NameCheck_ListBoxMouseUp
  end
  object MP3_ListBox: TListBox
    Left = 0
    Top = 424
    Width = 788
    Height = 294
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Anchors = [akLeft, akTop, akRight, akBottom]
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
    PopupMenu = MP3List_PopupMenu
    TabOrder = 2
    OnClick = MP3_ListBoxClick
    OnMouseUp = MP3_ListBoxMouseUp
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 16
    object File1: TMenuItem
      Caption = '??File'
      object Setup1: TMenuItem
        Bitmap.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFFFFDADADA00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000FFFFFF000000383A17000000000000000000000000000000
          0000000000000000000A25380A25380000000000000000000000000000000000
          000000383A17C0C27C686A2A0000000000000000000000000000000000000A25
          383973981240600A25380000000000000000000000000000000000585A2CE5E5
          C1C0C27C686A2A0000000000000000000000000A25383A749986B1D339739815
          486B0000000000000000000000000000000000000000737539E5E7C4C0C27C68
          6A2A0000000000000A25383A74999DC4E5568AB315486B000000000000000000
          000000000000000000000000000000000075763CE3E5BDC0C27C5052210A2538
          5083A4B3D4EB6D9ABE15486B0000000000000000000000000000000000000000
          00000044424200000006060674763B8E904D0A263A336C90ABCEE76D9ABE1548
          6B00000000000000000000000000000000000000000405059594940000000000
          000000000505050E324B2B618496BDDE5B8DB415486B00000000000000000000
          000000000000000000003B3939ADACACECEBEB5A58582C2B2B0000001D495030
          85977FACCE41779C1C4D6F686A2A686A2A515323383A17000000000000000000
          00003E3C3CECEBEBA1A0A08382825D5B5B1D4950308597DCF5FD56ABC71D4E6F
          E0E1BED2D497B8BA72B8BA73686A2A383A1700000000000000000000003E3C3C
          6A6969B8B7B7DFDEDE215862BBE4F062B2CF215862505221D2D497AAAC655B5D
          2FE6E6C5B8BA72686A2A0000000000000000000000000000000000656363C1C0
          C0F4F4F4215862215862000000686A2ADCDBAC999B55333414585A2CDDDBAA00
          00000000000000000000000000000000FFFFFF575656F4F4F4B6B4B4AAAAAA5A
          58583E3C3C000000707235E8E7C98E904D333414585A2C383A17000000000000
          0000000000000000000000FFFFFF4F4D4D0000009A9999B2B1B15D5B5B010101
          000000707235DCDBAC6769290102000000000000000000000000000000000000
          0000000000007F7F7F000000434141EEEEEEE4E3E3CBC9C9BEBCBC000000686A
          2A383A1700000000000000000000000000000000000000000000000000000000
          00000000FFFFFF4B494944424244424200000000000000000000000000000000
          00000000000000000000}
        Caption = '??Setup'
        ShortCut = 16464
        OnClick = Setup1Click
      end
      object Exit1: TMenuItem
        Bitmap.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B000000000000000000000000000D1AA4
          0512A0192BA81324A71223A71021A50E1FA50C1DA5091BA20719A20517A20317
          A105119F101FA50000000C1AA41827A7729ED36894D06994CF6B95D16D97D072
          9BD1769DD2799FD77DA1D482A5D792B0DB5579C70112A0101FA505109F77A6D5
          5379C6577EC75C82C86186C96E92CF95B1E19AB5E17799D37F9ED583A2D58BA8
          D9AEC8E5577CC705119F2234AC5F8ACC4F76C5547BC66388CDD1DFFAFFFFFFFF
          FFFFFFFFFFFFFFFFDAE7FD85A1D97F9ED48DA9DA85A5D70519A2202EAA5F8ACA
          4B72C46A8BCFFFFFFFFFFFFFD1DFFA9AB3E29BB5E3D5E4FCFFFFFFF9FFFF85A1
          D983A2D585A6D70517A22031AC5C87CA486EC2E5EFFFFFFFFF85A2DB577EC7D1
          DFFABCCFF16288CAA9C0E9FFFFFFD0DEF97F9ED57DA1D40719A22231AC5A85CC
          5E81CCFFFFFFBFD0F35077C5547BC6E7F1FFE8F2FF6085C96288CAECF5FFFFFF
          FF7799D3799FD7091BA22334AC5981C97693D5FFFFFF7E9BD84D74C45077C5E7
          F0FFE7F1FF5A81C86085C9B2C7EDFFFFFF90ACDC769DD20C1DA52535AC5881CA
          7391D3FFFFFF7B99D84A71C34D74C4E6F0FFE7F0FF577EC75A81C8B1C5ECFFFF
          FF7FA0D7729BD10E1FA52635AF587EC85477C8FFFFFFC8D7F8466DC24A71C3E5
          EFFFE6F0FF547BC6577EC7E8F2FFFFFFFF6389CA6D97D01021A52938AE547CC8
          365CBCC5D4F7FFFFFF93ABE2466DC2BDCFF2B3C6EE5077C59EB5E5FFFFFFBACD
          F06186C96B95D11223A72938AF5377C73158B9496BC4FFFFFFFFFFFFC8D7F888
          A2DC97B0E3E5EFFFFFFFFFF3FAFF6388CD5C82C86994CF1324A72F3FB0577CC8
          2C52B8375EBB496BC4C5D4F7FFFFFFFFFFFFFFFFFFFFFFFFBFD0F35D81CA547B
          C6577EC76894D0192BA80511A092B4DC183EB22E53B83158B9365CBC3860BD73
          91D37693D5436BC0486EC24B72C44E75C45379C6729ED30512A00817A12938AF
          93B5DD4C71C65479C7547CC8587EC85881CA5981C95A85CC5C87CA5E8ACA638F
          CE76A5D51827A70D1AA40000000817A10511A03040B12938AF2938AE2635AF25
          35AC2334AC2231AC2031AC202EAA2134AC05109F0C1AA4000000}
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
    end
    object Help1: TMenuItem
      Caption = '??Help'
      object Goo1: TMenuItem
        Caption = '??Website at Google Code'
        OnClick = Goo1Click
      end
      object WebsiteofAuthor1: TMenuItem
        Caption = '??Website of Author'
        OnClick = WebsiteofAuthor1Click
      end
      object Sendfeedback1: TMenuItem
        Caption = '??Send feedback'
        Visible = False
        OnClick = Sendfeedback1Click
      end
      object AboutMP3Toolbox1: TMenuItem
        Caption = '??About MP3Toolbox'
        OnClick = AboutMP3Toolbox1Click
      end
    end
  end
  object MP3List_PopupMenu: TPopupMenu
    OnPopup = MP3List_PopupMenuPopup
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
  object CDList_Popup: TPopupMenu
    Left = 400
    Top = 16
    object Dateibearbeiten1: TMenuItem
      Caption = 'Datei bearbeiten'
      OnClick = Dateibearbeiten1Click
    end
    object DateiausListeentfernen1: TMenuItem
      Caption = 'Datei aus Liste entfernen'
      OnClick = DateiausListeentfernen1Click
    end
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
    Left = 480
    Top = 96
  end
  object Result_File_SaveDialog: TSaveDialog
    FilterIndex = 0
    Title = 'Speichern'
    Left = 480
    Top = 144
  end
  object OpenDialog_FileSelect: TOpenDialog
    FilterIndex = 0
    Left = 480
    Top = 48
  end
  object XMLDocument1: TXMLDocument
    FileName = 'T:\Zuletzt hinzugef'#252'gt.xml'
    Left = 336
    Top = 328
    DOMVendorDesc = 'MSXML'
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 400
    Top = 328
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 448
    Top = 328
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    AutoLogin = True
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 496
    Top = 328
  end
end
