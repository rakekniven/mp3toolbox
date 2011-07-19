unit U_About;

interface

uses
	SysUtils, Types, Classes, Variants, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TAbout_F = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    About_PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Licence_Memo: TMemo;
    About_Memo: TMemo;
    Hyperlink_Label: TLabel;
    Memo3: TMemo;
    Memo4: TMemo;
    Close_BitBtn: TBitBtn;
    procedure Close_BitBtnClick(Sender: TObject);
    procedure Hyperlink_LabelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  About_F: TAbout_F;

implementation

uses U_Main;

{$R *.dfm}

procedure TAbout_F.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TAbout_F.Hyperlink_LabelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//  Hyperlink_Label.Cursor  :=  
end;

procedure TAbout_F.FormShow(Sender: TObject);
begin
	Label1.Caption	:=	'MP3ToolBox ' + U_Main.version;
end;

end.
