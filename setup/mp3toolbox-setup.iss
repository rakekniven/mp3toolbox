[Types]
Name: all; Description: all; MinVersion: 4.0.950,4.0.1381
[Languages]
Name: en; MessagesFile: compiler:Default.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: it; MessagesFile: compiler:Languages\Italian.isl
Name: es; MessagesFile: compiler:Languages\Spanish.isl

[Setup]
AppCopyright=Mark Ziegler
AppName=MP3Toolbox
AppVersion=1.1.26
;AppVerName=1.1.24
DefaultDirName={pf}\MP3Toolbox
DefaultGroupName=MP3Toolbox

VersionInfoVersion=1.1.26
VersionInfoCompany=Mark Ziegler
VersionInfoCopyright=Mark Ziegler
VersionInfoDescription=MP3Toolbox
DiskSpanning=false
UserInfoPage=false
ShowLanguageDialog=yes
AppPublisher=Mark Ziegler
AppPublisherURL=http://www.rakekniven.de
AppSupportURL=http://www.rakekniven.de
AppUpdatesURL=http://www.rakekniven.de
UninstallDisplayName=MP3Toolbox
MinVersion=0,6.1.7600
DisableStartupPrompt=true
ShowUndisplayableLanguages=true
UninstallDisplayIcon={app}\mp3toolbox.exe
CreateAppDir=true
OutputBaseFilename=MP3ToolboxSetup-1.1.26
UninstallFilesDir={pf}\MP3Toolbox Uninstall
;WizardImageFile=..\..\..\misc\trunk\setup\Inno Setup\Bilder\WizModernImage-IS-weinig.bmp
;WizardSmallImageFile=..\..\..\misc\trunk\setup\Inno Setup\Bilder\WizModernSmallImage-IS-weinig.bmp
AppVerName=1.1.26

[Icons]
Name: {group}\MP3Toolbox; Filename: {app}\mp3toolbox.exe; WorkingDir: {app}; IconIndex: 0
[Files]
Source: rar-folder\*.*; DestDir: {app}; Flags: recursesubdirs sortfilesbyextension
;[Tasks]
;Name: desktopicon; Description: {cm:CreateDesktopIcon}
;Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}
;[Run]
;Filename: {app}\mp3toolbox.exe; WorkingDir: {app}; Description: {cm:LaunchProgram, ToolBox}; Flags: nowait postinstall skipifsilent
