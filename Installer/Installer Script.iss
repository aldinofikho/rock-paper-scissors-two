; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Rock Paper Scissors"
#define MyAppVersion "1.0"
#define MyAppPublisher "KompeniGroup"
#define MyAppURL "purnamahardisaputra.github.io"
#define MyAppExeName "Batu Gunting Kertas.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2972113D-1F1E-4F63-9AEA-5773CDE375BD}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=Rock Paper Scissors Setup v1.0
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\purna\OneDrive\Dokumen\Unity Projects\1.0\Rock Paper Scissor - Skilvul\Builds\Windows - 64 Bit\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\purna\OneDrive\Dokumen\Unity Projects\1.0\Rock Paper Scissor - Skilvul\Builds\Windows - 64 Bit\UnityCrashHandler64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\purna\OneDrive\Dokumen\Unity Projects\1.0\Rock Paper Scissor - Skilvul\Builds\Windows - 64 Bit\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\purna\OneDrive\Dokumen\Unity Projects\1.0\Rock Paper Scissor - Skilvul\Builds\Windows - 64 Bit\Batu Gunting Kertas_Data\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

