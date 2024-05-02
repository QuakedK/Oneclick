:: (Quaked) App Debloat.
@echo off
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                     █████╗ ██████╗ ██████╗     ██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗
echo.                    ██╔══██╗██╔══██╗██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝
echo.                    ███████║██████╔╝██████╔╝    ██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║   
echo.                    ██╔══██║██╔═══╝ ██╔═══╝     ██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║   
echo.                    ██║  ██║██║     ██║         ██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║   
echo.                    ╚═╝  ╚═╝╚═╝     ╚═╝         ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
echo. 
echo.                          ╔══════════════════════════════════════════════════════════════════════╗
echo.                          ║                          (Removing)                                  ║
echo.                          ║  All Startup Apps, Extra Bloatware Services, Extra Bloatware tasks   ║
echo.                          ║ GameBarPresenceWriter, Xbox Gaming Service, Mircosoft Edge, OneDrive,║        
echo.                          ║   Logitech, Razor, Armoury Crate, Corsair ICUE, MSI, VisiSonics,     ║
echo.                          ║  AMD Bloat, Realtek, CCleaner, Avast Antivirus, All Mircosoft Apps   ║
echo.                          ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
timeout 2 > nul

cls
chcp 437 >nul
color D
echo (Quaked) Disabling Bloatware Services...
sc config NcbService start=disabled
sc config jhi_service start=disabled
sc config WMIRegistrationService start=disabled
sc config "Intel(R) TPM Provisioning Service" start=disabled
sc config DeviceAssociationService start=disabled
sc config StorSvc start=disabled
sc config TieringEngineService start=disabled
sc config DPS start=disabled
sc config Themes start=disabled
sc config edgeupdate start=disabled
sc config edgeupdatem start=disabled
sc config GoogleChromeElevationService start=disabled
sc config gupdate start=disabled
sc config gupdatem start=disabled
sc config logi_lamparray_service start=disabled
sc config LGHUBUpdaterService start=disabled
sc config SteelSeriesGGUpdateServiceProxy start=disabled
sc config RzActionSvc start=disabled
sc config RazerElevationService start=disabled
sc config RazerGameManagerService start=disabled
sc config RazerGameManagerService3 start=disabled
sc config RazerSynapseService start=disabled
sc config BraveElevationService start=disabled
sc config brave start=disabled
sc config bravem start=disabled
sc config GigabyteUpdateService start=disabled
sc config CCleanerBrowserElevationService start=disabled
sc config ccleaner start=disabled
sc config ccleanerm start=disabled
sc config CCleanerPerformanceOptimizerService start=disabled
echo Extra Bloatware disabled successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Disabling Extra Tasks...
schtasks /Change /TN "GoogleUpdateTaskMachineCore{9C99738B-B026-4A33-A16D-7CCD7650D527}" /Disable
schtasks /Change /TN "GoogleUpdateTaskMachineUA{2E0C9FAD-7C87-42A8-8EFF-986A5662B894}" /Disable
schtasks /Change /TN "Opera GX scheduled Autoupdate 1711926802" /Disable
schtasks /Change /TN "BraveSoftwareUpdateTaskMachineCore{A8A54493-B843-4D11-BA1F-30C26E9F10BE}" /Disable
schtasks /Change /TN "BraveSoftwareUpdateTaskMachineUA{FF1E0511-D7AF-4DB6-8A41-DC39EA60EC93}" /Disable
schtasks /Change /TN "CCleaner Update" /Disable
schtasks /Change /TN "CCleanerCrashReporting" /Disable
schtasks /Change /TN "CCleanerUpdateTaskMachineCore" /Disable
schtasks /Change /TN "CCleanerUpdateTaskMachineUA" /Disable
schtasks /Change /TN "Microsoft\Windows\capabilityaccessmanager" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SetupCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Setup\SnapshotCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefreshTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\ThemesSyncedImageDownload" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\UpdateUserPictureTask" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /Disable
schtasks /Change /TN "Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\SdbinstMergeDbTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Printing\PrintJobCleanupTask" /Disable
echo Extra tasks Deleting successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Deleting Extra Tasks...
schtasks /Delete /TN "GoogleUpdateTaskMachineCore{9C99738B-B026-4A33-A16D-7CCD7650D527}" /F
schtasks /Delete /TN "GoogleUpdateTaskMachineUA{2E0C9FAD-7C87-42A8-8EFF-986A5662B894}" /F
schtasks /Delete /TN "Opera GX scheduled Autoupdate 1711926802" /F
schtasks /Delete /TN "BraveSoftwareUpdateTaskMachineCore{A8A54493-B843-4D11-BA1F-30C26E9F10BE}" /F
schtasks /Delete /TN "BraveSoftwareUpdateTaskMachineUA{FF1E0511-D7AF-4DB6-8A41-DC39EA60EC93}" /F
schtasks /Delete /TN "CCleaner Update" /F
schtasks /Delete /TN "CCleanerCrashReporting" /F
schtasks /Delete /TN "CCleanerUpdateTaskMachineCore" /F
schtasks /Delete /TN "CCleanerUpdateTaskMachineUA" /F
echo Extra tasks Deleting successfully.
timeout 2 > nul


@echo off
cls
color 9
echo (Quaked) Disabling all startup apps...
rd /s /q "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
echo All startup apps disabled successfully.
timeout 2 > nul

@echo off
cls
color D
echo (Quaked) Removing GameBarPresenceWriter...
CD /D %HOMEDRIVE%%HOMEPATH%\Desktop
echo %CD%

REM ************ Main process *****************

set "fileToDelete=%SystemRoot%\System32\GameBarPresenceWriter.exe"

if exist "%fileToDelete%" (
    echo *** Taking ownership of the file ***
    takeown /F "%fileToDelete%"
    
    echo *** Adjusting permissions ***
    icacls "%fileToDelete%" /grant administrators:F

    echo *** Removing Gamebar Presence Writer ***
    del "%fileToDelete%" /s /f /q
    echo File deleted successfully.
) else (
    echo File not found: %fileToDelete%
)

timeout 2 > nul

cls
color 9
echo (Quaked) Removing Xbox Gaming Service... 
powershell -command "get-appxpackage Microsoft.GamingServices | remove-AppxPackage -allusers"
echo Xbox Gaming Service deleted successfully.
timeout 2 > nul

@echo off
cls
color 9
echo (Quaked) Removing Mircosoft Edge...
echo Stopping Edge tasks...
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1
taskkill /f /im msedge.exe /fi "IMAGENAME eq msedge.exe" >nul 2>&1

echo Deleting Microsoft Edge directories...

:: Delete Edge directory
rd /s /q "C:\Program Files (x86)\Microsoft\Edge" >nul 2>&1

:: Delete EdgeCore directory
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeCore" >nul 2>&1

:: Delete EdgeUpdate directory
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate" >nul 2>&1

:: Delete EdgeWebView directory
rd /s /q "C:\Program Files (x86)\Microsoft\EdgeWebView" >nul 2>&1

:: Delete Temp directory
rd /s /q "C:\Program Files (x86)\Microsoft\Temp" >nul 2>&1

echo Microsoft Edge deleted successfully.
timeout 2 > nul

@echo off
cls
color D
echo (Quaked) Removing OneDrive...
echo Kill OneDrive process
taskkill.exe /F /IM "OneDrive.exe"
taskkill.exe /F /IM "explorer.exe"

echo Remove OneDrive
winget uninstall --silent --accept-source-agreements Microsoft.OneDrive

echo Remove OneDrive from explorer sidebar
reg add "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f
reg add "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f

echo Removing run hook for new users
reg load "hku\Default" "C:\Users\Default\NTUSER.DAT"
reg delete "HKEY_USERS\Default\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg unload "hku\Default"

echo Removing start menu entry
del /f /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"

echo Removing scheduled task
schtasks /delete /tn "OneDrive*" /f

echo Restarting Explorer...
start explorer.exe
echo OneDrive deleted successfully.
timeout 2 > nul

cls
@echo off
color 9
echo (Quaked) Removing Logitech and Razor Apps...

echo Terminating processes associated with LGHUB...
taskkill /f /im lghub.exe >nul 2>&1
taskkill /f /im lghub_agent.exe >nul 2>&1
taskkill /f /im lghub_updater.exe >nul 2>&1
taskkill /f /im lghub_system_tray.exe >nul 2>&1

echo Stopping Logitech-related services...
net stop "LGHUBUpdaterService" >nul 2>&1

echo Deleting LGHUB directory...
rd /s /q "C:\Program Files\LGHUB"
rd /s /q "C:\Program Files\Logitech"
rd /s /q "C:\Program Files\Logi"
rd /s /q "C:\ProgramData\Logishrd"
rd /s /q "C:\ProgramData\LGHUB"
rd /s /q "%USERPROFILE%\AppData\Local\LGHUB"
rd /s /q "%USERPROFILE%\AppData\Roaming\G HUB"
rd /s /q "%USERPROFILE%\AppData\Roaming\lghub"

echo Terminating processes associated with Razer...
taskkill /f /im CefSharp.BrowserSubprocess.exe >nul 2>&1
taskkill /f /im CortexLauncherService.exe >nul 2>&1
taskkill /f /im Razer Central.exe >nul 2>&1
taskkill /f /im RazerCentralService.exe >nul 2>&1
taskkill /f /im RazerCortex.exe >nul 2>&1
taskkill /f /im RazerAppEngine.exe >nul 2>&1
taskkill /f /im RzEngineMon.exe >nul 2>&1
taskkill /f /im RazerAxon.exe >nul 2>&1
taskkill /f /im RazerAxon.Player.exe >nul 2>&1
taskkill /f /im RazerAxon.Reporter.exe >nul 2>&1
taskkill /f /im GameManagerService.exe >nul 2>&1
taskkill /f /im GameManagerServiceStartup.exe >nul 2>&1
taskkill /f /im CrashReporter.exe >nul 2>&1
taskkill /f /im GameManagerService3.exe >nul 2>&1
taskkill /f /im GMSServiceRegister.exe >nul 2>&1
taskkill /f /im RazerCentral.exe >nul 2>&1
taskkill /f /im RazerUpdater.exe >nul 2>&1
taskkill /f /im RazerCentralService.exe >nul 2>&1
taskkill /f /im "Razer Synapse 3.exe" >nul 2>&1
taskkill /f /im "Razer Synapse Service UI Start.exe" >nul 2>&1
taskkill /f /im "Razer Synapse Service.exe" >nul 2>&1
taskkill /f /im "Razer Synapse Service Process.exe" >nul 2>&1

echo Stopping Razer-related services...
net stop "RzActionSvc" >nul 2>&1
net stop "Razer Elevation Service" >nul 2>&1
net stop "Razer Game Manager Service" >nul 2>&1
net stop "Razer Game Manager Service 3" >nul 2>&1
net stop "Razer Synapse Service" >nul 2>&1

echo Deleting Razer directory...
taskkill /f /im RazerCortex.exe >nul 2>&1
taskkill /f /im CefSharp.BrowserSubprocess.exe >nul 2>&1
taskkill /f /im Razer Central.exe >nul 2>&1
taskkill /f /im RazerCentralService.exe >nul 2>&1

rd /s /q "C:\Program Files (x86)\Razer"
rd /s /q "C:\Program Files\Razer"

echo Logitech and Razor Apps deleted successfully.
timeout 2 > nul

cls
@echo off
color D
chcp 437 >nul 
echo (Quaked) Removing Asus Armoury Crate...

echo Terminating processes associated with Armoury Crate...
taskkill /f /im Aac3572DramHal_x86.exe >nul 2>&1
taskkill /f /im AacKingstonDramHal_x86.exe >nul 2>&1
taskkill /f /im AcPowerNotification.exe >nul 2>&1
taskkill /f /im ArmouryCrate.Service.exe >nul 2>&1
taskkill /f /im ArmouryCrate.UserSessionHelper.exe >nul 2>&1
taskkill /f /im ArmourySwAgent.exe >nul 2>&1
taskkill /f /im AsusCertService.exe >nul 2>&1
taskkill /f /im extensionCardHal_x86.exe >nul 2>&1
taskkill /f /im atkexComSvc.exe >nul 2>&1
taskkill /f /im ROGLiveService.exe >nul 2>&1

echo Stopping Armoury Crate-related services...
net stop "ArmouryCrateService" >nul 2>&1
net stop "LightingService" >nul 2>&1
net stop "AsusCertService" >nul 2>&1
net stop "asComSvc" >nul 2>&1
net stop "asus" >nul 2>&1
net stop "asusm" >nul 2>&1
net stop "AsusROGLSLService" >nul 2>&1
net stop "ROG Live Service" >nul 2>&1

echo Deleting Armoury Crate directory...
rd /s /q "C:\Program Files\ASUS"
rd /s /q "C:\Program Files (x86)\ASUS"
rd /s /q "C:\Program Files (x86)\LightingService"
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.ArmouryCrate_5.8.9.0_x64__qmba6cd70vzyy"
rd /s /q "C:\Program Files\WindowsApps\ASUSAmbientHAL64_1.0.0.2_neutral__gsg7p0crx7n6a"
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.ArmouryCrate5.8.9.0_neutral~_qmba6cd70vzyy"
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.AURACreator_3.7.6.0_x64__qmba6cd70vzyy"
rd /s /q "C:\Program Files\WindowsApps\B9ECED6F.AURACreator3.7.6.0_neutral~_qmba6cd70vzyy"

echo Asus Armoury Crate deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing Corsair Bloatware...

echo Terminating processes associated with Corsair Bloatware...
taskkill /f /im Corsair.Service.CpuIdRemote64.exe >nul 2>&1
taskkill /f /im Corsair.Service.exe >nul 2>&1
taskkill /f /im CorsairCpuIdService.exe >nul 2>&1
taskkill /f /im CueLLAccessService.exe >nul 2>&1
taskkill /f /im ICEsoundService64.exe >nul 2>&1

echo Stopping Corsair Bloatware-related services...
net stop "CorsairCpuIdService" >nul 2>&1
net stop "CorsairDeviceListerService" >nul 2>&1
net stop "iCUEUpdateService" >nul 2>&1
net stop "CorsairLLAService" >nul 2>&1
net stop "CorsairService" >nul 2>&1
net stop "ICEsoundService" >nul 2>&1

echo Deleting Corsair Bloatware directory...
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\clink\Corsair.Service.CpuIdRemote64.exe"
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\clink\Corsair.Service.exe"
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\CorsairCpuIdService.exe"
rd /s /q "C:\Program Files\Corsair\Corsair iCUE5 Software\CueLLAccessService.exe"
rd /s /q "C:\Windows\System32\ICEsoundService64.exe"
rd /s /q "C:\Program Files\Corsair"
rd /s /q "C:\Program Files (x86)\Corsair"


echo Corsair Bloatware deleted successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Removing Msi Bloatware...

echo Terminating processes associated with Msi Bloatware...
taskkill /f /im LightKeeperService.exe >nul 2>&1
taskkill /f /im MSI_Central_Service.exe >nul 2>&1
taskkill /f /im MSIAPService.exe >nul 2>&1
taskkill /f /im MSIService.exe >nul 2>&1
taskkill /f /im MSI.CentralServer.exe >nul 2>&1
taskkill /f /im MSI_Companion_Service.exe >nul 2>&1
taskkill /f /im Mystic_Light_Service.exe >nul 2>&1
taskkill /f /im MSI.CentralServer.exe >nul 2>&1
taskkill /f /im MSI.CentralServer.exe >nul 2>&1

echo Stopping Msi Bloatware-related services...
net stop "MSI_Central_Service" >nul 2>&1
net stop "MSI_Companion_Service" >nul 2>&1
net stop "Mystic_Light_Service" >nul 2>&1

echo Deleting Msi Bloatware directory...
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\Mystic_Light\LightKeeperService.exe"
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\MSI_Central_Service.exe"
rd /s /q "C:\Program Files (x86)\MSI\MSI NBFoundation Service\MSIAPService.exe"
rd /s /q "C:\Windows\SysWOW64\MSIService.exe"
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\MSI.CentralServer.exe"
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\Game_Summary\MSI_Companion_Service.exe"
rd /s /q "C:\Program Files (x86)\MSI\One Dragon Center\Mystic_Light\Mystic_Light_Service.exe"
rd /s /q "C:\Program Files (x86)\MSI"
rd /s /q "C:\Program Files\MSI"

echo Msi Bloatware deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing VisiSonics...

echo Terminating processes associated with VisiSonics...
taskkill /f /im VSHelper.exe >nul 2>&1
taskkill /f /im VSSrv.exe >nul 2>&1

echo Stopping VisiSonics-related services...
net stop "VSSrv" >nul 2>&1

echo Deleting VisiSonics directory...
rd /s /q "C:\Windows\System32\VSHelper.exe"
rd /s /q "C:\Windows\System32\VSSrv.exe"


echo VisiSonics deleted successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Removing AMD Bloat...

echo Terminating processes associated with AMD Bloat...
taskkill /f /im amdfendrsr.exe >nul 2>&1
taskkill /f /im atieclxx.exe >nul 2>&1
taskkill /f /im atiesrxx.exe >nul 2>&1
taskkill /f /im AUEPMaster.exe >nul 2>&1

echo Stopping AMD Bloat-related services...
net stop "AMD Crash Defender Service" >nul 2>&1
net stop "AMD External Events Utility" >nul 2>&1
net stop "AUEPLauncher" >nul 2>&1

echo Deleting AMD Bloat...
rd /s /q "C:\Windows\System32\amdfendrsr.exe"
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\u0390451.inf_amd64_39377efdd62734d1\B390182\atieclxx.exe"
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\u0390451.inf_amd64_39377efdd62734d1\B390182\atiesrxx.exe"
rd /s /q "C:\Program Files\AMD\Performance Profile Client\AUEPMaster.exe"


echo AMD Bloat deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing Realtek Audio Bloatware...

echo Terminating processes associated with Realtek Audio Bloatware...
taskkill /f /im RtkAudUService64.exe >nul 2>&1

echo Stopping Realtek Audio Bloatware-related services...
net stop "RtkAudioUniversalService" >nul 2>&1

echo Deleting Realtek Audio Bloatware...
rd /s /q "C:\Windows\System32\DriverStore\FileRepository\realtekservice.inf_amd64_af49968a824c7864\RtkAudUService64.exe"


echo Realtek Audio Bloatware deleted successfully.
timeout 2 > nul

cls
@echo off
color D
echo (Quaked) Removing CCleaner...

echo Terminating processes associated with CCleaner...
taskkill /f /im CCleaner64.exe >nul 2>&1
taskkill /f /im CCleanerPerformanceOptimizerService.exe >nul 2>&1
taskkill /f /im CCleanerBrowser.exe >nul 2>&1

echo Deleting CCleaner directory...
rd /s /q "C:\Program Files\CCleaner"
rd /s /q "C:\Program Files (x86)\CCleaner Browser"

echo CCleaner deleted successfully.
timeout 2 > nul

cls
@echo off
color 9
echo (Quaked) Removing Avast Antivirus...

echo Terminating processes associated with Avast Antivirus...
taskkill /f /im AvastUI.exe >nul 2>&1
taskkill /f /im aswToolsSvc.exe >nul 2>&1
taskkill /f /im aswEngSrv.exe >nul 2>&1
taskkill /f /im wsc_proxy.exe >nul 2>&1
taskkill /f /im AvastSvc.exe >nul 2>&1
taskkill /f /im aswidsagent.exe >nul 2>&1

echo Stopping  Avast Antivirus-related services...
net stop "avast! Antivirus" >nul 2>&1
net stop "avast" >nul 2>&1
net stop "avastm" >nul 2>&1
net stop "AvastSecureBrowserElevationService" >nul 2>&1
net stop "avast! Tools" >nul 2>&1
net stop "AvastWscReporter" >nul 2>&1

echo Deleting Avast Antivirus directory...
rd /s /q "C:\Program Files\Avast Software\Avast"
rd /s /q "C:\Program Files (x86)\AVAST Software"

echo Avast Antivirus deleted successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Removing Gigabtye Bloatware

echo Terminating processes associated with Gigabtye...
taskkill /f /im spd.exe >nul 2>&1
taskkill /f /im EasyTuneEngineService.exe >nul 2>&1
taskkill /f /im GraphicsCardEngine.exe >nul 2>&1

echo Stopping Gigabtye-related services...
net stop "cFosSpeedS" >nul 2>&1
net stop "GigabyteUpdateService" >nul 2>&1

echo Deleting Gigabtye directory...
rd /s /q "C:\Program Files\cFosSpeed"
rd /s /q "C:\Program Files\GIGABYTE\Control Center\Lib\GBT_VGA\Service"
rd /s /q "C:\Program Files (x86)\Gigabyte\EasyTuneEngineService"

echo Gigabtye Bloatware deleted successfully.
timeout 2 > nul

cls
color 9
echo (Quaked) Removing Random Bloatware...

echo Terminating processes associated with Random Bloatware...
taskkill /f /im AppleMobileDeviceService.exe >nul 2>&1
taskkill /f /im UserOOBEBroker.exe >nul 2>&1
taskkill /f /im SecurityHealthService.exe >nul 2>&1

echo Stopping Random Bloatware-related services...
net stop "Apple Mobile Device Service" >nul 2>&1

echo Disabling Random Bloatware Services...
sc config ose64 start=disabled >nul 2>&1
sc config Microsoft Update Health Service start=disabled >nul 2>&1

echo Deleting Random Bloatware...
rd /s /q "C:\Program Files\Common Files\Apple\Mobile Device Support\AppleMobileDeviceService.exe"
rd /s /q "C:\Windows\System32\oobe\UserOOBEBroker.exe"
rd /s /q "C:\Windows\System32\SecurityHealthService.exe"


echo Random Bloatware deleted successfully.
timeout 2 > nul

:: (Quaked) Mircosoft Apps Remover.
@echo off
Cls
color D
echo.                                          (Removing Mircosoft Apps/Bloatware)
echo.                                       This cycles through over 100 lines of code
echo.                                             and will likely take a while.
echo. 
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Cortana* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsCalculator* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingSports* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.BingFinance* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.HEIFImageExtension* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.StorePurchaseApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Windows.Phone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.CommsPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Appconnector* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MinecraftUWP* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.GroupMe10* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *king.com.CandyCrushSaga* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *king.com.CandyCrushSodaSaga* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ShazamEntertainmentLtd.Shazam* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Flipboard.Flipboard* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *9E2F88E3.Twitter* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ClearChannelRadioDigital.iHeartRadio* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *D5EA27B7.Duolingo-LearnLanguagesforFree* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *AdobeSystemsIncorporated.AdobePhotoshopExpress* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *PandoraMediaInc.29680B314EFC2* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *46928bounde.EclipseManager* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *ActiproSoftwareLLC.562882FEEB491* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *SpotifyAB.SpotifyMusic* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Advertising.Xaml* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.RemoteDesktop* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.NetworkSpeedTest* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Todos* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Windows.Search* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
PowerShell -ExecutionPolicy Unrestricted -Command "Get-AppxPackage *Microsoft.Windows.Cortana* | Remove-AppxPackage"
taskkill /F /IM Teams.exe
powershell -Command "Get-AppxPackage -AllUsers | Where-Object { $_.PackageFullName -eq 'MicrosoftTeams_23285.3703.2471.4627_x64__8wekyb3d8bbwe' } | Remove-AppxPackage"
echo Mircosoft Apps and Bloatware deleted successfully.
timeout 2 > nul

cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                     █████╗ ██████╗ ██████╗     ██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗
echo.                    ██╔══██╗██╔══██╗██╔══██╗    ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝
echo.                    ███████║██████╔╝██████╔╝    ██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║   
echo.                    ██╔══██║██╔═══╝ ██╔═══╝     ██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║   
echo.                    ██║  ██║██║     ██║         ██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║   
echo.                    ╚═╝  ╚═╝╚═╝     ╚═╝         ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║       (Quaked) App Debloat Ran successfully.       ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.
chcp 437 >nul                                                                          
Pause
