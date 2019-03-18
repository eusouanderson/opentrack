; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "../build/opentrack-version.hxx"
#define MyAppName "opentrack"
#define MyAppVersion OPENTRACK_VERSION
#define MyAppPublisher "opentrack"
#define MyAppURL "http://github.com/opentrack/opentrack"
#define MyAppExeName "opentrack.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{63F53541-A29E-4B53-825A-9B6F876A2BD6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename={#MyAppVersion}-win32-setup
SetupIconFile=..\variant\default\opentrack.ico
Compression=lzma2/ultra64
SolidCompression=yes
DisableWelcomePage=True
DisableReadyPage=True
DisableReadyMemo=True
RestartIfNeededByRun=False
InternalCompressLevel=ultra
CompressionThreads=4
LZMANumFastBytes=273
MinVersion=0,5.01sp2

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\build\install\*"; DestDir: "{app}"; Flags: ignoreversion createallsubdirs recursesubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; 

[Code]
