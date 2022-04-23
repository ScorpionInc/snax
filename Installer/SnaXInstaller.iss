; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppId "{15969DA6-B6F9-4155-8364-F4B8D19FFBA3}"
#define MyAppName "SnaX"
#define MyAppPublisher "Frank-Vegar Mortensen"
#define MyAppURL "https://www.snaxgameengine.com/"
#define MyAppExeName "SnaXDeveloper.exe"

; THESE ARE SET IN .BAT-script!!!            
;#define BuildDir "../../../githubbuilds/snax/bin/Release/"
;#define MyAppVersion "1.3.1.0"

#define CommonDir "../Common/"
;#define RedistPath "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Redist\MSVC\14.23.27820"
;#define RedistPath "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Redist\MSVC\14.28.29325"
#define RedistPath "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Redist\MSVC\14.29.30133"
#define RedistFile "vc_redist.x64.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{#MyAppId}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright="Copyright Frank-Vegar Mortensen"
AppMutex=SnaX_running
VersionInfoVersion={#MyAppVersion}
UsePreviousAppDir=yes
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=SnaXSetup
OutputDir="{#BuildDir}/Installer"
Compression=lzma
SolidCompression=yes
; Minimum Windows 7:
; MinVersion=6.1.7600 
MinVersion=10.0 
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
LicenseFile=../LICENSE
DisableDirPage=auto
DisableProgramGroupPage=auto
SetupIconFile=snax.ico
ChangesAssociations=yes
PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=dialog
WizardStyle=modern
UninstallDisplayIcon="{app}\SnaXDeveloper.exe"


; Note: The language file is not complete. If supporting multiple languages, it must be updated (Lots of english text in this file).
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "association"; Description: "Associate {#MyAppName} with the .m3j and .m3b file extentions"; GroupDescription: "File Associations:";
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "installredist"; Description: "Install VC++ Redistributables (Recommended)"; GroupDescription: "VC++ Redistributables";

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

; Snax core files
Source: "{#BuildDir}\ChipDialogs.dll"; DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\M3DCore.dll"; DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\M3DEngine.dll"; DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\SnaXDeveloper.exe"; DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\SnaXViewer.exe"; DestDir: "{app}"; Flags: ignoreversion; 

; Chips
Source: "{#BuildDir}\Chips\GraphicsChips.dll";         DestDir: "{app}\Chips"; Flags: ignoreversion; 
Source: "{#BuildDir}\Chips\PhysXChips.dll";            DestDir: "{app}\Chips"; Flags: ignoreversion; 
Source: "{#BuildDir}\Chips\StdChips.dll";              DestDir: "{app}\Chips"; Flags: ignoreversion; 
Source: "{#BuildDir}\Chips\StdImporters.dll";          DestDir: "{app}\Chips"; Flags: ignoreversion; 

; Dialogs
Source: "{#BuildDir}\Dialogs\GraphicsChips_Dlg.dll";   DestDir: "{app}\Dialogs"; Flags: ignoreversion; 
Source: "{#BuildDir}\Dialogs\PhysXChips_Dlg.dll";      DestDir: "{app}\Dialogs"; Flags: ignoreversion; 
Source: "{#BuildDir}\Dialogs\StdChips_Dlg.dll";        DestDir: "{app}\Dialogs"; Flags: ignoreversion; 
Source: "{#BuildDir}\Dialogs\StdImporters_Dlg.dll";    DestDir: "{app}\Dialogs"; Flags: ignoreversion; 

; Common 3rd-party files
Source: "{#BuildDir}\iconv-2.dll";          DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\libxml2.dll";          DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\lzma.dll";             DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\zlib1.dll";            DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\SDL2.dll";             DestDir: "{app}"; Flags: ignoreversion; 

; Qt required these files
Source: "{#BuildDir}\Qt6Core.dll";          DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\Qt6Gui.dll";           DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\Qt6Network.dll";       DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\Qt6Widgets.dll";       DestDir: "{app}"; Flags: ignoreversion; 

Source: "{#BuildDir}\brotlicommon.dll";     DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\brotlidec.dll";        DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\bz2.dll";              DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\freetype.dll";         DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\harfbuzz.dll";         DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\libpng16.dll";         DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\pcre2-16.dll";         DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\icudt69.dll";         DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\icuin69.dll";         DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#BuildDir}\icuuc69.dll";         DestDir: "{app}"; Flags: ignoreversion; 

Source: "{#BuildDir}\networkinformation\qnetworklistmanager.dll";   DestDir: "{app}\networkinformation"; Flags: ignoreversion; 
Source: "{#BuildDir}\imageformats\qgif.dll";                        DestDir: "{app}\imageformats"; Flags: ignoreversion; 
Source: "{#BuildDir}\imageformats\qico.dll";                        DestDir: "{app}\imageformats"; Flags: ignoreversion; 
Source: "{#BuildDir}\imageformats\qjpeg.dll";                       DestDir: "{app}\imageformats"; Flags: ignoreversion; 
Source: "{#BuildDir}\platforms\qwindows.dll";                       DestDir: "{app}\platforms"; Flags: ignoreversion; 
Source: "{#BuildDir}\styles\qwindowsvistastyle.dll";                DestDir: "{app}\styles"; Flags: ignoreversion; 
Source: "{#BuildDir}\tls\qcertonlybackend.dll";                     DestDir: "{app}\tls"; Flags: ignoreversion; 
Source: "{#BuildDir}\tls\qopensslbackend.dll";                      DestDir: "{app}\tls"; Flags: ignoreversion; 
Source: "{#BuildDir}\tls\qschannelbackend.dll";                     DestDir: "{app}\tls"; Flags: ignoreversion; 

; 3rd-directory
Source: "{#BuildDir}\3rd\assimp-vc142-mt.dll";         DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\PhysX_64.dll";                DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\PhysXCommon_64.dll";          DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\PhysXCooking_64.dll";         DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\PhysXFoundation_64.dll";      DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\PhysXDevice64.dll";           DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\PhysXGpu_64.dll";             DestDir: "{app}\3rd"; Flags: ignoreversion;
Source: "{#BuildDir}\3rd\Primitives.dll";              DestDir: "{app}\3rd"; Flags: ignoreversion; 
Source: "{#BuildDir}\3rd\HBAOPlus.dll";                DestDir: "{app}\3rd"; Flags: ignoreversion; 


; MSVC Redistributable
Source: "{#RedistPath}\{#RedistFile}";        DestDir: "{app}"; Flags: ignoreversion; 

; Various files from source
Source: "../LICENSE";                                      DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#CommonDir}Changelog.txt";                       DestDir: "{app}"; Flags: ignoreversion isreadme;
Source: "{#CommonDir}\3rd\copyright.assimp.txt";           DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.boost.txt";            DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.directtex.txt";        DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.directxmath.txt";      DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.directxtk.txt";        DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.directxtk12.txt";      DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.libiconv.txt";         DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.liblzma.txt";          DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.libxml2.txt";          DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.magic-enum.txt";       DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.openssl.txt";          DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.physx.txt";            DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.qt.txt";               DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.rapidjson.txt";        DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.sdl2.txt";             DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\3rd\copyright.zlib.txt";             DestDir: "{app}\licenses"; Flags: ignoreversion; 
Source: "{#CommonDir}\..\HBAOPlus\license.txt";            DestDir: "{app}\licenses"; DestName: "copyright.hbaoplus.txt"; Flags: ignoreversion; 
Source: "{#CommonDir}\..\generator\license.txt";           DestDir: "{app}\licenses"; DestName: "copyright.generator.txt"; Flags: ignoreversion; 


; Files for publishing
Source: "{#CommonDir}\Publish\SFXNoConfig_x64.sfx";     DestDir: "{app}\Publish"; Flags: ignoreversion; 
Source: "{#CommonDir}\Publish\x64\7z.dll";              DestDir: "{app}\Publish"; Flags: ignoreversion; 
Source: "{#CommonDir}\Publish\x64\7zG.exe";             DestDir: "{app}\Publish"; Flags: ignoreversion; 

; Templates
Source: "{#CommonDir}\Templates\Cameras.m3j";     DestDir: "{app}\Templates"; Flags: ignoreversion; 
Source: "{#CommonDir}\Templates\Materials.m3j";   DestDir: "{app}\Templates"; Flags: ignoreversion; 
Source: "{#CommonDir}\Templates\Primitives.m3j";  DestDir: "{app}\Templates"; Flags: ignoreversion; 
Source: "{#CommonDir}\Templates\Setup.m3j";       DestDir: "{app}\Templates"; Flags: ignoreversion; 
Source: "{#CommonDir}\Templates\Start.m3j";       DestDir: "{app}\Templates"; Flags: ignoreversion; 
Source: "{#CommonDir}\Templates\Utilities.m3j";   DestDir: "{app}\Templates"; Flags: ignoreversion; 

; Examples
Source: "{#CommonDir}\Examples\Break Points.m3j";                     DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\FFT Ocean.m3j";                        DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\Gaussian Blur.m3j";                    DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\HBAO.m3j";                             DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\Multisampling.m3j";                    DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\Physically Based Rendering.m3b";       DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\Simple Shadow Maps.m3j";               DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\Skinned Character.m3j";                DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\The Basics.m3j";                       DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\XGUITest.m3j";                         DestDir: "{app}\Examples"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\PhysX\PhysX - Kinetic Balls.m3j";      DestDir: "{app}\Examples\PhysX"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\PhysX\PhysX - Simple Rope.m3j";        DestDir: "{app}\Examples\PhysX"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\PhysX\PhysX - Spherical Joint.m3j";    DestDir: "{app}\Examples\PhysX"; Flags: ignoreversion; 
Source: "{#CommonDir}\Examples\PhysX\PhysX - Wrecking Ball.m3j";      DestDir: "{app}\Examples\PhysX"; Flags: ignoreversion; 

; Libraries
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\Cameras.m3j";                  DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\FXAA.m3j";                     DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\Graphics.m3j";                 DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\HDR.m3j";                      DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\Lights.m3j";                   DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\Materials.m3j";                DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\Matrices.m3j";                 DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\MipMapGeneration.m3j";         DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\PBR.m3j";                      DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\RenderContext.m3j";            DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 
Source: "{#CommonDir}\Libraries\SnaX\SimpleRenderFramework\XGUI.m3j";                     DestDir: "{app}\Libraries\SnaX\SimpleRenderFramework"; Flags: ignoreversion; 

; Documentation
Source: "{#CommonDir}\Documentation\SnaXManual.pdf";        DestDir: "{app}"; Flags: ignoreversion; 
Source: "{#CommonDir}\Documentation\Tutorial1.pdf";         DestDir: "{app}\Tutorials"; Flags: ignoreversion; 
Source: "{#CommonDir}\Documentation\earth.jpg";             DestDir: "{app}\Tutorials"; Flags: ignoreversion; 
Source: "{#CommonDir}\Documentation\Tutorial2.pdf";         DestDir: "{app}\Tutorials"; Flags: ignoreversion; 

; Remove files from earlier installs
[InstallDelete]
Type: files; Name: "{app}\libcharset.dll";
Type: files; Name: "{app}\libiconv.dll";
Type: files; Name: "{app}\Examples\XGUI.m3x";
Type: files; Name: "{app}\Examples\Common\FXAA.m3x";
Type: files; Name: "{app}\Examples\Common\HDR.m3x";
Type: files; Name: "{app}\Examples\Common\Mips.m3x";
Type: files; Name: "{app}\Examples\Common\PBR.m3x";
Type: files; Name: "{app}\Examples\Common\Primitives.m3x";
Type: files; Name: "{app}\Examples\Common\RenderSettings.m3x";
Type: files; Name: "{app}\Examples\PhysX\XGUI.m3x";

Type: files; Name: "{app}\Examples\Break Points.m3x";
Type: files; Name: "{app}\Examples\FFT Ocean.m3x";
Type: files; Name: "{app}\Examples\Gaussian Blur.m3x";
Type: files; Name: "{app}\Examples\HBAO.m3x";
Type: files; Name: "{app}\Examples\Multisampling.m3x";
Type: files; Name: "{app}\Examples\Simple Shadow Maps.m3x";
Type: files; Name: "{app}\Examples\Skinned Character.m3x";
Type: files; Name: "{app}\Examples\The Basics.m3x";
Type: files; Name: "{app}\Examples\XGUITest.m3x";
Type: files; Name: "{app}\Examples\PhysX\PhysX - Kinetic Balls.m3x";
Type: files; Name: "{app}\Examples\PhysX\PhysX - Simple Rope.m3x";
Type: files; Name: "{app}\Examples\PhysX\PhysX - Spherical Joint.m3x";
Type: files; Name: "{app}\Examples\PhysX\PhysX - Wrecking Ball.m3x";

Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\Cameras.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\FXAA.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\Graphics.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\HDR.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\Lights.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\Materials.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\Matrices.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\MipMapGeneration.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\PBR.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\RenderContext.m3x";
Type: files; Name: "{app}\Libraries\SnaX\SimpleRenderFramework\XGUI.m3x";

Type: files; Name: "{app}\Chips\D3D12Chips.dll";
Type: files; Name: "{app}\Dialogs\D3D12Chips_Dlg.dll";
Type: files; Name: "{app}\3rd\GFSDK_SSAO_D3D12.win64.dll";
Type: files; Name: "{app}\Qt5Core.dll";
Type: files; Name: "{app}\Qt5Gui.dll";
Type: files; Name: "{app}\Qt5Network.dll";
Type: files; Name: "{app}\Qt5Svg.dll";
Type: files; Name: "{app}\Qt5Widgets.dll";
Type: files; Name: "{app}\bearer\qgenericbearer.dll";
Type: files; Name: "{app}\iconengines\qsvgicon.dll";
Type: files; Name: "{app}\imageformats\qgif.dll";
Type: files; Name: "{app}\imageformats\qico.dll";
Type: files; Name: "{app}\imageformats\qjpeg.dll";
Type: files; Name: "{app}\imageformats\qsvg.dll";
Type: files; Name: "{app}\imageformats\qtga.dll";
Type: files; Name: "{app}\imageformats\qtiff.dll";
Type: files; Name: "{app}\imageformats\qwbmp.dll";
Type: files; Name: "{app}\imageformats\qwebp.dll";

Type: files; Name: "{app}\libcrypto-1_1-x64.dll";
Type: files; Name: "{app}\libeay32.dll";
Type: files; Name: "{app}\libssl-1_1-x64.dll";
Type: files; Name: "{app}\libssl32.dll";
Type: files; Name: "{app}\ssleay32.dll";


[Icons]
Name: "{group}\{#MyAppName}";   Filename: "{app}\{#MyAppExeName}"
Name: "{group}\User Manual";    Filename: "{app}\SnaXManual.pdf"
Name: "{group}\Examples";       Filename: "{app}\Examples"
Name: "{group}\Tutorials\Tutorial 1 - The Basics";                    Filename: "{app}\Tutorials\Tutorial1.pdf"
Name: "{group}\Tutorials\Tutorial 1 - Object-Oriented Programming";   Filename: "{app}\Tutorials\Tutorial2.pdf"
Name: "{commondesktop}\{#MyAppName}";                                 Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: {app}\{#RedistFile}; \
    Parameters: "/norestart /quiet"; \
    StatusMsg: "Installing VC++ Redistributables..."; \
    Tasks: installredist
Filename: "{app}\SnaXManual.pdf"; Flags: shellexec runasoriginaluser postinstall unchecked
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
; Create the main registry key for current user! (Do NOT delete on uninstall to preserve settings!)
Root: HKA; Subkey: "Software\{#MyAppPublisher}\{#MyAppName}";
; Set up .m3j file association:
Root: HKA; Subkey: "Software\Classes\.m3j"; ValueType: string; ValueName: ""; ValueData: "M3DJSONFile"; Flags: uninsdeletevalue; Tasks: association 
Root: HKA; Subkey: "Software\Classes\M3DJSONFile"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName} JSON Project File"; Flags: uninsdeletekey; Tasks: association
Root: HKA; Subkey: "Software\Classes\M3DJSONFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"; Tasks: association
Root: HKA; Subkey: "Software\Classes\M3DJSONFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: association
; Set up .m3b file association:
Root: HKA; Subkey: "Software\Classes\.m3b"; ValueType: string; ValueName: ""; ValueData: "M3DBINFile"; Flags: uninsdeletevalue; Tasks: association 
Root: HKA; Subkey: "Software\Classes\M3DBINFile"; ValueType: string; ValueName: ""; ValueData: "{#MyAppName} Binary Project File"; Flags: uninsdeletekey; Tasks: association
Root: HKA; Subkey: "Software\Classes\M3DBINFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"; Tasks: association
Root: HKA; Subkey: "Software\Classes\M3DBINFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Tasks: association








