:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun

@echo off
title Browser Downloader V1.0
color A

:: Check for Admin Privileges. (Browser Downloader requires elevated permissions)
fltmc >nul 2>&1
if not %errorlevel% == 0 (
    Powershell -NoProfile -Command "Write-Host 'Browser Download is required to be run as *Administrator.*' -ForegroundColor White -BackgroundColor Red" 
    Powershell -NoProfile -Command "Write-Host 'Please Click *Yes* to the following prompt!' -ForegroundColor White -BackgroundColor Red" 
    timeout 3 > nul
    Powershell -NoProfile Start -Verb RunAs '%0'
    exit /b 0
)

:: Configuring ANSI Colors. (Defines ANSI Foreground colors)
set "Red=[91m"
set "Blue=[94m"
set "White=[97m"
set "Orange=[38;5;208m"

:: Browser Download. (Browser Download Menu)
:Browser_Download
cls
chcp 65001 >nul 2>&1
echo ╔═════════════════════════╗
echo ║ ✅ Downloading Browser. ║
echo ╚═════════════════════════╝
echo.
echo %White%[Choose an option]
echo %Red%1. Chrome
echo %Orange%2. Brave
echo %Blue%3. Edge
set /p option="%White%Enter option number: "
if "%option%"=="1" (
    goto :Download_Chrome
) else if "%option%"=="2" (
    goto :Download_Brave
) else if "%option%"=="3" ( 
    goto :Download_Edge
) else (
    cls
    chcp 437 >nul
    Powershell -NoProfile -Command "Write-Host 'Invalid choice, Please choose options 1-3.' -ForegroundColor White -BackgroundColor Red"
    timeout 2 > nul
    cls
    goto :Browser_Download
)

:: Google Chrome Download.
:Download_Chrome
cls
color A
chcp 65001 >nul 2>&1
echo ╔═══════════════════════════════╗
echo ║ ✅ Downloading Google Chrome. ║
echo ╚═══════════════════════════════╝
mkdir "C:\Browser Downloader" >nul 2>&1
set "FileURL=https://dl.google.com/chrome/install/latest/chrome_installer.exe"
set "FileName=ChromeSetup.exe"
set "DownloadsFolder=C:\Browser Downloader"
curl -s -L "%FileURL%" -o "%DownloadsFolder%\%FileName%"
if exist "%DownloadsFolder%\%FileName%" (
   echo ✔  Chrome Downloaded successfully.
   echo.
   echo → Now automatically starting the installer.
   start "" "C:\Browser Downloader\ChromeSetup.exe"
   echo.
   pause
   rd /s /q "C:\Browser Downloader" >nul 2>&1
   exit
) else (
   echo %Red%❌ Chrome Failed to download
   echo.
   echo → Returning to the Browser Download Menu.
   goto :Browser_Download
)
endlocal

:: Brave Download.
:Download_Brave
cls
color A
chcp 65001 >nul 2>&1
echo ╔═══════════════════════════════╗
echo ║ ✅ Downloading Brave Browser. ║
echo ╚═══════════════════════════════╝
mkdir "C:\Browser Downloader" >nul 2>&1
set "FileURL=https://github.com/brave/brave-browser/releases/download/v1.86.139/BraveBrowserSetup.exe"
set "FileName=BraveBrowserSetup.exe"
set "DownloadsFolder=C:\Browser Downloader"
curl -s -L "%FileURL%" -o "%DownloadsFolder%\%FileName%"
if exist "%DownloadsFolder%\%FileName%" (
   echo ✔  Brave Downloaded successfully.
   echo.
   echo → Now automatically starting the installer.
   start "" "C:\Browser Downloader\BraveBrowserSetup.exe"
   echo.
   pause
   rd /s /q "C:\Browser Downloader" >nul 2>&1
   exit
) else (
   echo %Red%❌ Brave Failed to download
   echo.
   echo → Returning to the Browser Download Menu.
   goto :Browser_Download
)
endlocal

:: Brave Download.
:Download_Edge
cls
color A
chcp 65001 >nul 2>&1
echo ╔════════════════════════════════╗
echo ║ ✅ Downloading Microsoft Edge. ║
echo ╚════════════════════════════════╝
mkdir "C:\Browser Downloader" >nul 2>&1
set "FileURL=https://go.microsoft.com/fwlink/?linkid=2109047&Channel=Stable&language=en&consent=1"
set "FileName=MicrosoftEdgeSetup.exe"
set "DownloadsFolder=C:\Browser Downloader"
curl -s -L "%FileURL%" -o "%DownloadsFolder%\%FileName%"
if exist "%DownloadsFolder%\%FileName%" (
   echo ✔  Edge Downloaded successfully.
   echo.
   echo → Now automatically starting the installer.
   start "" "C:\Browser Downloader\MicrosoftEdgeSetup.exe"
   echo.
   pause
   rd /s /q "C:\Browser Downloader" >nul 2>&1
   exit
) else (
   echo %Red%❌ Edge Failed to download
   echo.
   echo → Returning to the Browser Download Menu.
   goto :Browser_Download
)
endlocal

