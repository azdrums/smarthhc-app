; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SmartHHC"
#define MyAppVersion "0.1.0"
#define MyAppPublisher "AZDrums"
#define MyAppURL "https://azdrums.github.io/"
#define MyAppExeName "smarthhc.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1025D056-B7F6-4C1A-88F8-8C1D4531F24C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}
OutputBaseFilename=SmartHHC
Compression=lzma
SolidCompression=yes
LicenseFile=Deployment\LICENSE.txt

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "Deployment\smarthhc.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\vc_redist.x64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\D3Dcompiler_47.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\libEGL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\libGLESV2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\opengl32sw.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\Qt5SerialPort.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "Deployment\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion

Source: "Deployment\iconengines\*"; DestDir: "{app}\iconengines"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Deployment\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Deployment\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Deployment\translations\*"; DestDir: "{app}\translations"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
