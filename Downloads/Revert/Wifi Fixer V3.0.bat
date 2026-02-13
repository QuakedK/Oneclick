:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun
 
@echo off
title Wifi Fixer V3.0 
color 9

:: (Quaked) Check for Admin Privileges.
fltmc >nul 2>&1
if not %errorlevel% == 0 (
    powershell -Command "Write-Host 'Wifi Fixer is required to be run as *Administrator.*' -ForegroundColor White -BackgroundColor Red" 
    powershell -Command "Write-Host 'Please Click *Yes* to the following prompt!' -ForegroundColor White -BackgroundColor Red" 
    timeout 3 > nul
    PowerShell Start -Verb RunAs '%0'
    exit /b 0
)

:: (Quaked) Wifi Fixer.
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
echo.                                  ║             Version 3.0 - By Quaked                ║
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
        sc config LanmanWorkstation start=demand
    sc config WdiServiceHost start=demand
    sc config NcbService start=demand
    sc config ndu start=demand
    sc config Netman start=demand
    sc config netprofm start=demand
    sc config WwanSvc start=demand
    sc config Dhcp start=auto
    sc config DPS start=auto
    sc config lmhosts start=auto
    sc config NlaSvc start=auto
    sc config nsi start=auto
    sc config RmSvc start=auto
    sc config Wcmsvc start=auto
    sc config Winmgmt start=auto
    sc config WlanSvc start=auto
    reg add "HKLM\Software\Policies\Microsoft\Windows\NetworkConnectivityStatusIndicator" /v "NoActiveProbe" /t REG_DWORD /d "0" /f
    reg add "HKLM\System\CurrentControlSet\Services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d "1" /f
    reg add "HKLM\System\CurrentControlSet\Services\BFE" /v "Start" /t REG_DWORD /d "2" /f
    reg add "HKLM\System\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
    reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\vwifibus" /v "Start" /t REG_DWORD /d "3" /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\vwififlt" /v "Start" /t REG_DWORD /d "3" /f
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\vwifimp" /v "Start" /t REG_DWORD /d "3" /f
    ipconfig /release
    ipconfig /renew
    arp -d *
    nbtstat -R
    nbtstat -RR
    ipconfig /flushdns
    ipconfig /registerdns >nul 2>&1
    timeout 2 > nul 
    shutdown /r /t 0
    pause
) else if "%option%"=="2" (
    echo.
    echo Skipping...
    timeout 2 > nul 
    exit
)
