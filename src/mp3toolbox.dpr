program mp3toolbox;


{$R 'Manifest.res' 'Manifest.rc'}
{$R 'version.res' 'version.RC'}

uses
	Forms,
	lib1 in 'lib1.pas',
	lib_html_output in 'lib_html_output.pas',
	U_Language in 'U_Language.pas',
	U_Main in 'U_Main.pas' {F_Main},
	U_Setup in 'U_Setup.pas' {F_Setup},
	U_About in 'U_About.pas' {About_F},
	U_CharCode in 'externallibs\U_CharCode.pas',
	Id3v2Frames in 'externallibs\Id3v2Frames.pas',
	Mp3FileUtils in 'externallibs\Mp3FileUtils.pas',
	fldbrowsUnicode in 'externallibs\fldbrowsUnicode.pas',
	U_FTP in 'U_FTP.pas';

{$R *.res}

begin
	Application.Initialize;
	Application.CreateForm(TF_Main, F_Main);
	Application.CreateForm(TF_Setup, F_Setup);
	Application.CreateForm(TAbout_F, About_F);
	Application.Run;
end.
