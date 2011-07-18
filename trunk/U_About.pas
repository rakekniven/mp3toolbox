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
    procedure FormResize(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  About_F: TAbout_F;

implementation

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

procedure TAbout_F.FormResize(Sender: TObject);
begin
  About_PageControl.Left  :=  24;
  About_PageControl.Top   :=  96;
  About_PageControl.Width :=  About_F.ClientWidth -  (About_PageControl.Left * 2);
  About_PageControl.Height:=  About_F.ClientHeight - About_PageControl.Top - Close_BitBtn.Height - 32;

  About_Memo.Left   :=  48;
  About_Memo.Top    :=  8;
  About_Memo.Width  :=  TabSheet1.ClientWidth - (About_Memo.Left * 2);
  About_Memo.Height :=  TabSheet1.ClientHeight - About_Memo.Top - 32;

  Hyperlink_Label.Left  :=  About_Memo.Left;
  Hyperlink_Label.Top   :=  About_Memo.Top + About_Memo.Height + 16;

  Close_BitBtn.Left :=  About_F.ClientWidth - Close_BitBtn.Width - 24;
  Close_BitBtn.Top  :=  About_F.ClientHeight - Close_BitBtn.Height - 16;

end;

end.
