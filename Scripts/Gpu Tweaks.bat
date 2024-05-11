:: Created by Quaked.
:: Join my discord: https://discord.gg/h5fXfmBKey or If the link expires follow my tiktok: https://www.tiktok.com/@_quaked_ 
:: Code Snippet Credit: Prolix
 
@echo off
title Gpu Tweaks V1
color 9

:: Restore Point.      
cls
chcp 65001 >nul 2>&1
echo. 
echo. 
echo.		                     
echo.				  ░█▀▄░█▀▀░█▀▀░▀█▀░█▀█░█▀▄░█▀▀░░░█▀█░█▀█░▀█▀░█▀█░▀█▀
echo.				  ░█▀▄░█▀▀░▀▀█░░█░░█░█░█▀▄░█▀▀░░░█▀▀░█░█░░█░░█░█░░█░
echo.				  ░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░▀▀▀░░░▀░░░▀▀▀░▀▀▀░▀░▀░░▀░
echo.
echo.                      ╔════════════════════════════════════════════════════════════════════════╗                    
echo.                      ║            Create a restore point to undo system changes               ║
echo.                      ║  Quaked's team isn't liable for issues; it's recommended to make one.  ║
echo.                      ║                ^(Custom OS users may face limitations^)                  ║                   
echo.                      ╚════════════════════════════════════════════════════════════════════════╝
echo.

chcp 437 >nul
@echo off

echo Enabling System Protection!
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\'>nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f  >nul 2>&1
timeout 1 > nul 

set /p choice=Do you want to make a restore point? (Y/N): 
if /i "%choice%"=="Y" (
    echo Creating restore point...
    powershell -Command "Checkpoint-Computer -Description 'OneClick V5.3 Restore Point'"
    echo Restore point successfully created.
    timeout 2 > nul 
) else if /i "%choice%"=="N" (
    echo Not creating a restore point, use at discretion.
    timeout 2 > nul 
) else (
    echo Invalid choice. Please choose Y or N.
)  

:: (Quaked/Prolix) Gpu Tweaks Start Screen.
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.                                                ██████╗ ██████╗ ██╗   ██╗             
echo.                                               ██╔════╝ ██╔══██╗██║   ██║             
echo.                                               ██║  ███╗██████╔╝██║   ██║             
echo.                                               ██║   ██║██╔═══╝ ██║   ██║             
echo.                                               ╚██████╔╝██║     ╚██████╔╝             
echo.                                                ╚═════╝ ╚═╝      ╚═════╝              
echo.                                                   
echo.                                  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo.                                  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo.                                     ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗
echo.                                     ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo.                                     ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo.                                     ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo.
echo (What Gpu do you have?)
echo 1. Nvidia
echo 2. AMD
echo 3. Intel
echo 4. None/Skip
echo.

set /p GPU=(enter the corresponding number):

@echo off

if "%GPU%"=="1" (
    echo Starting Nvidia Tweaks.
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PowerMizerEnable" /t REG_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PowerMizerLevel" /t REG_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PowerMizerLevelAC" /t REG_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{7B7A1E6E-0A7E-11EF-946A-806E6F6E6963}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "8738" /f 
    
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f 
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t Reg_DWORD /d "0" /f 
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
    REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}\0001\PowerSettings" /v IdlePowerState /t REG_BINARY /d 00000000 /f
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d 1 /f
    REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f
    REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >nul 2>&1
    schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >nul 2>&1 
    schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >nul 2>&1 
    schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >nul 2>&1 
    schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >nul 2>&1 
    schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >nul 2>&1 
    schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >nul 2>&1 

    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%u IN ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%v IN ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%n IN ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do ( 
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d 30 >nul 2>&1
    )
    echo Starting Nvidia Profile Inspector Script.
    timeout 3 > nul  
    cls
    goto:NvidiaProfileInspector
    
) else if "%GPU%"=="2" (
    echo Starting AMD Tweaks.
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "3D_Refresh_Rate_Override_DEF" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "3to2Pulldown_NA" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AAF_NA" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "Adaptive De-interlacing" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowRSOverlay" /t Reg_SZ /d "false" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowSkins" /t Reg_SZ /d "false" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowSnapshot" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AllowSubscription" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AntiAlias_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AreaAniso_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "ASTT_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "AutoColorDepthReduction_NA" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableSAMUPowerGating" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableUVDPowerGatingDynamic" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableVCEPowerGating" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableAspmL0s" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableAspmL1" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableUlps" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableUlps_NA" /t Reg_SZ /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "KMD_DeLagEnabled" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "KMD_FRTEnabled" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableDMACopy" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableBlockWrite" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "StutterMode" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "EnableUlps" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "PP_SclkDeepSleepDisable" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "PP_ThermalAutoThrottlingEnable" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "DisableDrmdmaPowerGating" /t Reg_DWORD /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000" /v "KMD_EnableComputePreemption" /t Reg_DWORD /d "0" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /t Reg_SZ /d "1" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "Main3D" /t Reg_BINARY /d "3100" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "FlipQueueSize" /t Reg_BINARY /d "3100" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "ShaderCache" /t Reg_BINARY /d "3200" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "Tessellation_OPTION" /t Reg_BINARY /d "3200" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "Tessellation" /t Reg_BINARY /d "3100" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "VSyncControl" /t Reg_BINARY /d "3000" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\UMD" /v "TFQ" /t Reg_BINARY /d "3200" /f 
    REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Video\{B784559B-672D-11EE-A4CA-E612636C81AA}\0000\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f 

    echo Setting interrupt policies...
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%g IN ('wmic path win32_VideoController get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%i IN ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG ADD "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f 
    FOR /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID ^| findstr /L "VEN_"') do REG DELETE "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
    FOR /f %%u IN ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%u\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%v IN ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%v\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d C0 >nul 2>&1
    )
    FOR /f %%n IN ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v DevicePolicy /t REG_DWORD /d 4 >nul 2>&1
        REG ADD "HKLM\System\CurrentControlSet\Enum\%%n\Device Parameters\Interrupt Management\Affinity Policy" /f /v AssignmentSetOverride /t REG_BINARY /d 30 >nul 2>&1
    )
	pause
        goto:DoneSkipGpu
) else if "%GPU%"=="3" (
    echo Starting Intel Tweaks.
    for /f %%t in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "Intel" ^| findstr "HKEY"') do (
    Reg.exe add "%%t" /v "Disable_OverlayDSQualityEnhancement" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "IncreaseFixedSegment" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "AdaptiveVsyncEnable" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "DisablePFonDP" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "EnableCompensationForDVI" /t REG_DWORD /d "1" /f
    Reg.exe add "%%t" /v "NoFastLinkTrainingForeDP" /t REG_DWORD /d "0" /f
    Reg.exe add "%%t" /v "ACPowerPolicyVersion" /t REG_DWORD /d "16898" /f
    Reg.exe add "%%t" /v "DCPowerPolicyVersion" /t REG_DWORD /d "16642" /f
  )

  Reg.exe add "HKLM\Software\Intel\GMM" /v "DedicatedSegmentSize" /t REG_DWORD /d "512" /f

    pause
    goto:DoneSkipGpu
) else if "%GPU%"=="4" (
    echo Skipping Gpu Tweaks.
    timeout 1 > nul 
    goto:DoneSkipGpu
) else (
    echo Invalid input. Please enter the number corresponding to your GPU type.
)

cls
:NvidiaProfileInspector
echo Running Nvidia Profile Inspector with imported optimized settings...
set "fileURL=https://github.com/QuakedK/Downloads/raw/main/nvidiaProfileInspector.exe"
set "fileName=nvidiaProfileInspector.exe"
set "fileURL2=https://raw.githubusercontent.com/QuakedK/Downloads/main/QuakedOptimizedNVProflie.nip"
set "fileName2=Quaked Optimized NV Proflie.nip"
set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝

curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
curl -s -L "%fileURL2%" -o "%downloadsFolder%\%fileName2%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    echo Importing configuration file...
    "%downloadsFolder%\%fileName%" -importProfile "%downloadsFolder%\%fileName2%"  
    pause
) else (
    echo Download of executable failed.
    echo Skipping importing configuration file.
    pause
)

:: System Restart/Reboot.
:DoneSkipGpu
chcp 437 >nul 
color 9
@echo off
choice /c:R /n /m "Press R to reboot/restart your PC and apply all tweaks successfully: "
if errorlevel 1 (
    echo You pressed R. Rebooting...
    shutdown /r /t 0
) else (
    echo You didn't press R. 
    echo Please manually restart your pc!
    pause
)