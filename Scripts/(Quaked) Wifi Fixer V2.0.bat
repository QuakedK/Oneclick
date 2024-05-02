:: (Quaked) Wifi Fixer.
@echo off
cls
color 9
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                              ██╗    ██╗██╗███████╗██╗    ███████╗██╗██╗  ██╗███████╗██████╗ 
echo.                              ██║    ██║██║██╔════╝██║    ██╔════╝██║╚██╗██╔╝██╔════╝██╔══██╗
echo.                              ██║ █╗ ██║██║█████╗  ██║    █████╗  ██║ ╚███╔╝ █████╗  ██████╔╝
echo.                              ██║███╗██║██║██╔══╝  ██║    ██╔══╝  ██║ ██╔██╗ ██╔══╝  ██╔══██╗
echo.                              ╚███╔███╔╝██║██║     ██║    ██║     ██║██╔╝ ██╗███████╗██║  ██║
echo.                               ╚══╝╚══╝ ╚═╝╚═╝     ╚═╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo. 
echo.                                  ╔════════════════════════════════════════════════════╗
echo.                                  ║             Version 2.0 - By Quaked                ║
echo.                                  ╚════════════════════════════════════════════════════╝
echo.
echo.
echo.                                                                          
echo Choose an option:
echo 1. Turn On Wifi
echo 2. Skip! 

set /p option="Enter option number: "

if "%option%"=="1" (
    echo Turning On Wifi...
    sc config LanmanWorkstation start= demand
    sc config WdiServiceHost start= demand
    sc config NcbService start= demand
    sc config ndu start= demand
    sc config Netman start= demand
    sc config netprofm start= demand
    sc config WwanSvc start= demand
    sc config Dhcp start= auto
    sc config DPS start= auto
    sc config lmhosts start= auto
    sc config NlaSvc start= auto
    sc config nsi start= auto
    sc config RmSvc start= auto
    sc config Wcmsvc start= auto
    sc config Winmgmt start= auto
    sc config WlanSvc start= auto
    schtasks /Change /TN "Microsoft\Windows\WlanSvc\CDSSync" /Enable
    schtasks /Change /TN "Microsoft\Windows\WCM\WiFiTask" /Enable
    schtasks /Change /TN "Microsoft\Windows\NlaSvc\WiFiTask" /Enable
    schtasks /Change /TN "Microsoft\Windows\DUSM\dusmtask" /Enable
    reg add "HKLM\Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "0" /f
    reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
    reg add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
    reg add "HKLM\System\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
    reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
    net start DPS
    net start nsi
    net start NlaSvc
    net start Dhcp
    net start Wcmsvc
    net start RmSvc
    wmic path win32_networkadapter where index=0 call disable
    wmic path win32_networkadapter where index=1 call disable
    wmic path win32_networkadapter where index=2 call disable
    wmic path win32_networkadapter where index=3 call disable
    wmic path win32_networkadapter where index=4 call disable
    wmic path win32_networkadapter where index=5 call disable
    wmic path win32_networkadapter where index=0 call enable
    wmic path win32_networkadapter where index=1 call enable
    wmic path win32_networkadapter where index=2 call enable
    wmic path win32_networkadapter where index=3 call enable
    wmic path win32_networkadapter where index=4 call enable
    wmic path win32_networkadapter where index=5 call enable
    arp -d *
    route -f
    nbtstat -R
    nbtstat -RR
    netcfg -d
    netsh winsock reset
    netsh int 6to4 reset all
    netsh int httpstunnel reset all
    netsh int ip reset
    netsh int isatap reset all
    netsh int portproxy reset all
    netsh int tcp reset all
    netsh int teredo reset all
    netsh branchcache reset
    ipconfig /release
    ipconfig /renew
    sc config WlanSvc start= auto
    sc config Wcmsvc start= auto
    echo Wifi turned on successfully.
    echo Restarting PC...
    shutdown /r /t 0
    pause
) else if "%option%"=="2" (
    echo.
    echo Skipping...
    timeout 1 > nul 
    goto :Skipwifi
)

cls
:Skipwifi
echo Skipped Wifi Fixer!
pause
