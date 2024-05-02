:: (Quaked) Dns Selection.
@echo off
cls
chcp 65001 >nul 2>&1
color D
echo.
echo.
echo.
echo.
echo.
echo.                                                 ██████╗ ███╗   ██╗███████╗
echo.                                                 ██╔══██╗████╗  ██║██╔════╝
echo.                                                 ██║  ██║██╔██╗ ██║███████╗
echo.                                                 ██║  ██║██║╚██╗██║╚════██║
echo.                                                 ██████╔╝██║ ╚████║███████║
echo.                                                 ╚═════╝ ╚═╝  ╚═══╝╚══════╝
echo. 
echo.                                 ╔══════════════════════════════════════════════════════╗
echo.                                 ║ Switching dns may or may not lead to better results  ║
echo.                                 ║             Skipping this is advised!                ║
echo.                                 ╚══════════════════════════════════════════════════════╝
echo.
echo.
echo. 
chcp 437 >nul                                                                         
setlocal enabledelayedexpansion

REM Get the active network interface using PowerShell
for /f "usebackq tokens=*" %%i in (`powershell "(Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}).Name"`) do (
    set "interface=%%i"
)

set /p dns_choice=Enter DNS provider (1 for Google, 2 for Cloudflare, 3 to skip): 

if "%dns_choice%"=="1" (
    echo Setting DNS to Google...
    netsh interface ipv4 add dnsservers name="%interface%" address=8.8.8.8 index=1
    netsh interface ipv4 add dnsservers name="%interface%" address=8.8.4.4 index=2
    echo DNS set to Google successfully.
    pause
) 
if "%dns_choice%"=="2" (
    echo Setting DNS to Cloudflare...
    netsh interface ipv4 add dnsservers name="%interface%" address=1.1.1.1 index=1
    netsh interface ipv4 add dnsservers name="%interface%" address=1.0.0.1 index=2
    echo DNS set to Cloudflare successfully.
    pause
) 
if "%dns_choice%"=="3" (
    echo Skipping DNS configuration.
    pause
)
