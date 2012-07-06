unit U_Update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls,
	lib1,
	U_Language, Buttons, pngimage, ExtCtrls;

type
  TF_Update = class(TForm)
    Button1: TButton;
    LatestReleaseLab: TLabel;
		InstalledVersionLab: TLabel;
    ReleaseDateLab: TLabel;
    LatestReleaseLab2: TLabel;
    ReleaseDateLab2: TLabel;
		InstalledVersionLab2: TLabel;
		Image1: TImage;
		DownloadBtn: TBitBtn;
		ChangelogLab: TLabel;
		ChangelogLab2: TLabel;
		procedure Button1Click(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure DownloadBtnClick(Sender: TObject);
		procedure ChangelogLab2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
		{ Public-Deklarationen }
		LatestVersion:	String;
		InstalledVersion:	String;
		ReleaseDate:	String;
		DownloadUrl:	String;
		ChangelogUrl	:	String;
		ReleaseNotes	:	TStringList;
  end;

var
  F_Update: TF_Update;

implementation

{$R *.dfm}

procedure TF_Update.Button1Click(Sender: TObject);
begin
	Close;
end;

procedure TF_Update.FormCreate(Sender: TObject);
begin
	ReleaseNotes	:=	TStringList.Create;
end;

procedure TF_Update.FormShow(Sender: TObject);
begin
	F_Update.Caption	:=  GetTxt(1, 83, 'Update');;
	LatestReleaseLab.Caption			:=	GetTxt(1, 77, 'Verfügbare Version');;
	ReleaseDateLab.Caption				:=	GetTxt(1, 78, 'Veröffentlicht am');;
	ChangelogLab.Caption					:=	GetTxt(1, 79, 'Software-Historie');;
	InstalledVersionLab.Caption		:=	GetTxt(1, 80, 'Installierte Version');;

	LatestReleaseLab2.Caption			:=	LatestVersion;
	ReleaseDateLab2.Caption				:=	ReleaseDate;
	ChangelogLab2.Caption					:=	GetTxt(1, 81, 'Changelog');
	InstalledVersionLab2.Caption	:=	InstalledVersion;

	DownloadBtn.Caption						:=	GetTxt(1, 82, 'Download');

end;

procedure TF_Update.DownloadBtnClick(Sender: TObject);
begin
	lib1.Start_External_Program(self.WindowHandle,
															'open',
															DownloadUrl,
															'',
															'',
															SW_SHOW);
end;

procedure TF_Update.ChangelogLab2Click(Sender: TObject);
begin
	lib1.Start_External_Program(self.WindowHandle,
															'open',
															ChangelogUrl,
															'',
															'',
															SW_SHOW);
end;

end.
