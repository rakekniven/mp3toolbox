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
	About_PageControl.ActivePage	:=	TabSheet1;
end;

end.
