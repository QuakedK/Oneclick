:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun

@echo off
title Audio Bloat Remover V1.0
color B
chcp 65001 >nul 2>&1

:: Check if Realtek Service exist.
sc query "RtkAudioUniversalService" >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] Audio Bloat Remover: Realtek Bloat not found. >> "C:\Oneclick Logs\Oneclick Log.txt"
    echo ❌ Realtek Bloat not found.
    goto :Sound_Research_Check
) else ( 
    echo [%DATE% %TIME%] Audio Bloat Remover: Realtek Bloat found. >> "C:\Oneclick Logs\Oneclick Log.txt"
    echo ✔  Deleting Realtek Bloat.
    goto :Realtek
)

:: Realtek Audio Bloat.
:Realtek
set "DriverStorePath=C:\Windows\System32\DriverStore\FileRepository"
set "FilePattern=realtekservice.inf_amd64_*"

:: Task Killing, Stopping and Deleting Realtek.
taskkill /F /IM RtkAudUService64.exe >nul 2>&1
net stop "RtkAudioUniversalService" >nul 2>&1
sc delete RtkAudioUniversalService >nul 2>&1

:: Realtek Loop.
for /d %%G in ("%DriverStorePath%\%FilePattern%") do (
    echo [%DATE% %TIME%] Audio Bloat Remover: Realtek Driver Path: %%G >> "C:\Oneclick Logs\Oneclick Log.txt"
    rd /s /q "%%G" >nul 2>&1
)

:: Check if Sound Research Service exist.
:Sound_Research_Check
sc query "SECOMNService" >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] Audio Bloat Remover: Sound Research Bloat not found. >> "C:\Oneclick Logs\Oneclick Log.txt"
    echo ❌ Sound Research Bloat not found.
    goto :VisiSonics_Check
) else ( 
    echo [%DATE% %TIME%] Audio Bloat Remover: Sound Research Bloat found. >> "C:\Oneclick Logs\Oneclick Log.txt"
    echo ✔  Deleting Sound Research Bloat.
    goto :Sound_Research
)

:: Sound Research Audio Bloat.
:Sound_Research
taskkill /f /im SECOMNService.exe >nul 2>&1
taskkill /f /im SECOCL.exe >nul 2>&1
net stop "SECOMNService" >nul 2>&1
sc delete SECOMNService >nul 2>&1
rd /s /q "C:\Windows\System32\SECOMN64.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\SECOCL64.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\SECCNH64.exe" >nul 2>&1

:: Check if VisiSonics Service exist.
:VisiSonics_Check
sc query "VSSrv" >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] Audio Bloat Remover: VisiSonics Bloat not found. >> "C:\Oneclick Logs\Oneclick Log.txt"
    echo ❌ VisiSonics Bloat not found.
    goto :End
) else ( 
    echo [%DATE% %TIME%] Audio Bloat Remover: VisiSonics Bloat found. >> "C:\Oneclick Logs\Oneclick Log.txt"
    echo ✔  Deleting VisiSonics Bloat.
    goto :VisiSonics
)

:: VisiSonics Audio Bloat.
:VisiSonics
taskkill /f /im VSHelper.exe >nul 2>&1
taskkill /f /im VSSrv.exe >nul 2>&1
net stop "VSSrv" >nul 2>&1
sc delete VSSrv >nul 2>&1
rd /s /q "C:\Windows\System32\VSHelper.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\VSSrv.exe" >nul 2>&1

:End
echo Closing in 3 seconds...
timeout 3 > nul
exit