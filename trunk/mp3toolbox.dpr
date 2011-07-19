program mp3toolbox;



uses
  Forms,
  lib1 in 'lib1.pas',
  lib_html_output in 'lib_html_output.pas',
  U_Language in 'U_Language.pas',
  U_Main in 'U_Main.pas' {F_Main},
  U_Setup in 'U_Setup.pas' {F_Setup},
  U_About in 'U_About.pas' {About_F};

{$R *.res}

begin
  Application.Initialize;
	Application.CreateForm(TF_Main, F_Main);
	Application.CreateForm(TF_Setup, F_Setup);
	Application.CreateForm(TAbout_F, About_F);
  Application.Run;
end.
