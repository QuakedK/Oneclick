:: Created by Quaked.
:: Join my discord: https://discord.gg/h5fXfmBKey or If the link expires follow my tiktok: https://www.tiktok.com/@_quaked_ 
:: Code Snippet Credit: AmitXV, Calypto, Savitarax, Khorive  
 
@echo off
title Latency Tweaks
color 9

:: (Quaked) Latency Tweaks.
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                 ██╗      █████╗ ████████╗███████╗███╗   ██╗ ██████╗██╗   ██╗       
echo.                                 ██║     ██╔══██╗╚══██╔══╝██╔════╝████╗  ██║██╔════╝╚██╗ ██╔╝       
echo.                                 ██║     ███████║   ██║   █████╗  ██╔██╗ ██║██║      ╚████╔╝        
echo.                                 ██║     ██╔══██║   ██║   ██╔══╝  ██║╚██╗██║██║       ╚██╔╝         
echo.                                 ███████╗██║  ██║   ██║   ███████╗██║ ╚████║╚██████╗   ██║          
echo.                                 ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═══╝ ╚═════╝   ╚═╝          
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║              Running latency Tweaks...             ║       
echo.                                  ╚════════════════════════════════════════════════════╝
echo.                                                                          
timeout 2 > nul

:: Restore Point.      
cls
Color D
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
    powershell -Command "Checkpoint-Computer -Description 'OneClick V4 Restore Point'"
    echo Restore point successfully created.
    timeout 2 > nul 
) else if /i "%choice%"=="N" (
    echo Not creating a restore point, use at discretion.
    timeout 2 > nul 
) else (
    echo Invalid choice. Please choose Y or N.
)


cls
color 9
chcp 437 >nul
echo (Quaked) Applying System Clock Settings...
bcdedit /deletevalue useplatformclock
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
echo System Clock Settings appiled successfully.
timeout 2 > nul

cls
color D
echo (Quaked) Applying Priority Separation 2A... 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 0x2a /f
echo Priority Separation appiled successfully.
timeout 2 > nul

cls
@echo off
color 9
echo (Quaked) Installing and Setting up Timer Res...
echo.
echo Choose an option:
echo 1. Timer Res (Windows 10)
echo 2. Timer and Global Res (Windows 11)
echo 3. ISLC (Both Win 10 and 11)
echo 4. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/SetTimerResolution.exe"
    set "fileName=SetTimerResolution.exe" 
) else if "%option%"=="2" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/SetTimerResolution.exe"
    set "fileName=SetTimerResolution.exe"
) else if "%option%"=="3" (
    set "fileURL=https://github.com/QuakedK/Downloads/raw/main/ISLC.zip"
    set "fileName=ISLC.zip"
    set "extractFolder=%USERPROFILE%\Downloads\ISLC"
) else if "%option%"=="4" (
    echo Skipping!
    timeout 1 > nul
    goto :SkipTimer    
) 

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    if "%option%"=="1" (
        echo Starting Timer Res...
        Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TimerResolution" /t REG_SZ /d "%USERPROFILE%\Downloads\SetTimerResolution.exe --resolution 5000 --no-console" /f
        start "" "%USERPROFILE%\Downloads\SetTimerResolution.exe" --resolution 5000 --no-console
        echo Timer Res is now active in the background!
        Pause
    ) else if "%option%"=="2" (
        echo Starting Timer and Global Res...
        Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TimerResolution" /t REG_SZ /d "%USERPROFILE%\Downloads\SetTimerResolution.exe --resolution 5000 --no-console" /f
        REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f
        start "" "%USERPROFILE%\Downloads\SetTimerResolution.exe" --resolution 5000 --no-console
        echo Timer and Global Res are now active in the background!
        Pause
    ) else if "%option%"=="3" (
        timeout 1 > nul
        echo Extracting ISLC...
        mkdir "%extractFolder%" > nul
        tar -xf "%downloadsFolder%\%fileName%" -C "%extractFolder%"
        echo ISLC extracted successfully!
        echo Starting Islc
        start "" "%USERPROFILE%\Downloads\ISLC\ISLC\Intelligent standby list cleaner ISLC.exe"
        cls
        echo 1. Check and turn on the boxes that say, Start ISLC minimized and Launch ISLC.
        echo.
        echo 2. Check and turn on the box Enable timer resolution and change the 1.00ms to 0.50ms or 0.5000.
        echo.
        echo 3. If you're Windows 11 also check UseGlobalTimerResolutionRequests
        echo.
        echo 4. Make sure the polling rate is set to 1000ms
        echo. 
        echo 5. Change Free memory is lower than, to half of your ram.
        echo.
        echo  Example: 1gb of ram is 1024Mb X 16 = 16384 then divide by 2 = 8192MB
        echo  The list size is at least : 1024 MB
        echo            And
        echo  Free memory is lower than : 8192MB
        echo.
        echo  Here's presets: 
        echo  4gb = 2048 MB
        echo  6gb = 3072 MB
        echo  8gb = 4096 MB
        echo  10gb = 5120 MB
        echo  12gb = 6144 MB
        echo  16gb = 8192 MB
        echo  32gb = 16384 MB
        echo  64gb = 32768 MB
        echo.
        echo  6. Click the start box
        pause
    )
) else (
    echo Download failed.
    echo Skipping!
    timeout 1 > nul
    goto :SkipTimer
)

:SkipTimer
cls
color D
echo (Khorive) Tweaking NDIS...
chcp 437 >nul
@echo off
setlocal

echo Detecting Network Adapter...

for /f "skip=1 delims=" %%a in ('wmic nic where "NetConnectionStatus=2" get NetConnectionID /value 2^>nul') do (
    for /f "tokens=2 delims==" %%b in ("%%a") do (
        set "adapter_name=%%b"
    )
)

if defined adapter_name (
    echo Your current network adapter is: %adapter_name%

    echo Enabling Interrupt Moderation and setting Interrupt Moderation Rate to medium...
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Interrupt Moderation' | Set-NetAdapterAdvancedProperty -RegistryValue 1"
    powershell -Command "Get-NetAdapterAdvancedProperty -Name \"%adapter_name%\" -DisplayName 'Interrupt Moderation Rate' | Set-NetAdapterAdvancedProperty -RegistryValue 125"

    echo Setting NetworkThrottlingIndex to 10...
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 10 /f
    echo NDIS Tweaks appiled successfully.
) else (
    echo Unable to detect your current network adapter.
    pause
    exit /b
)

endlocal
timeout 2 > nul

cls
color 9
echo (Calypto) Tweaking and Disabling things in Device Manager...
@echo off
setlocal enabledelayedexpansion

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft GS Wavetable Synth*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*NDIS Virtual Network Adapter Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Composite Bus Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Virtual Drive Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Remote Desktop Device Redirector Bus*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) Management Engine Interface #1*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) SPI (Flash) Controller - 7AA4*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Intel(R) SMBus - 7AA3*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*UMBus Root Bus Enumerator*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
timeout 1 > nul

REM Get instance ID of the device directly from PowerShell
for /f "usebackq tokens=*" %%A in (`powershell -command "Get-PnpDevice -FriendlyName '*Microsoft Hypervisor Service*' | Select-Object -ExpandProperty InstanceId"`) do (
    set "instanceID=%%A"
)

REM Disable the device using pnputil
pnputil /disable-device "!instanceID!"
echo.
echo.
echo Device Manager appiled successfully.
timeout 2 > nul


cls
@echo off
chcp 65001 >nul 2>&1
color D
echo.
echo.
echo.                                          ░█▀█░█▀█░█░█░█▀▀░█▀▄░░░█▀█░█░░░█▀█░█▀█
echo.                                          ░█▀▀░█░█░█▄█░█▀▀░█▀▄░░░█▀▀░█░░░█▀█░█░█
echo.                                          ░▀░░░▀▀▀░▀░▀░▀▀▀░▀░▀░░░▀░░░▀▀▀░▀░▀░▀░▀           
echo. 
echo.                         ╔════════════════════════════════════════════════════════════════════════╗
echo.                         ║                   1. Quaked Ultimate Performance                       ║
echo.                         ║   Provides High Performance And Low Latency while having idles enabled ║ 
echo.                         ║       Perfect for the majority of system's and recommended by me!      ║
echo.                         ╚════════════════════════════════════════════════════════════════════════╝              
echo.
echo.
echo.                         ╔════════════════════════════════════════════════════════════════════════╗
echo.                         ║          2. (Advanced) Quaked Ultimate Performance Idle Off:           ║
echo.                         ║      Provides Sightly Decreased Latency And better performance,        ║
echo.                         ║       But unfortunately At the cost of having idle off you get         ║
echo.                         ║  More Wattage, power consumption, higher cpu temps and 100p Cpu Usage  ║   
echo.                         ╚════════════════════════════════════════════════════════════════════════╝           
echo.
echo.
echo Choose an option:
echo 1. Quaked Ultimate Performance
echo 2. (Advanced) Quaked Ultimate Performance Idle Off
echo 3. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileID=1mxFJjSxtx9LOLivfUjr3UE_rxizUfZ9Q"
    set "fileName=Quaked Ultimate Performance.pow"
) else if "%option%"=="2" (
    set "fileID=1_KxNB1UDRnvXLKBS84sZX3k03ixxjogY"
    set "fileName=Quaked Ultimate Performance Idle Off.pow"
) else if "%option%"=="3" ( 
    echo Skipping Power Plan Section! 
    timeout 2 > nul   
    goto :endpower
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "https://drive.google.com/uc?export=download&id=%fileID%" -o "%downloadsFolder%\%fileName%"
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    powercfg -import "%downloadsFolder%\%fileName%"
    echo.
    powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
    powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
    timeout 3 > nul
    echo.
    echo Opening Power Plan Selection...
    powercfg.cpl
    echo You might have to refresh to see any changes!
    pause
) else (
    echo Download failed.
    echo Skipping Power Plan Section! 
    timeout 2 > nul   
    goto :endpower
)


:endpower
chcp 437 >nul
color 9
cls
echo Latency Tweaks Successful Ran!
pause
