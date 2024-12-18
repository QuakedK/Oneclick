@echo off

:: Realtek Audio Bloat.
set "DriverStorePath=C:\Windows\System32\DriverStore\FileRepository"
set "FilePattern=realtekservice.inf_amd64_*"

:: Task Killing, Stopping and Disabling Realtek.
taskkill /F /IM RtkAudUService64.exe >nul 2>&1
net stop "RtkAudioUniversalService" >nul 2>&1
sc config RtkAudioUniversalService start=disabled >nul 2>&1

:: Use a for loop to find all matching folders/files
for /d %%G in ("%DriverStorePath%\%FilePattern%") do (
    echo Deleting: %%G >nul 2>&1
    rd /s /q "%%G" >nul 2>&1
)

:: Sound Research Audio Bloat.
taskkill /f /im SECOMNService.exe >nul 2>&1
taskkill /f /im SECOCL.exe >nul 2>&1
net stop "SECOMNService" >nul 2>&1
sc config SECOMNService start=disabled >nul 2>&1
rd /s /q "C:\Windows\System32\SECOMN64.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\SECOCL64.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\SECCNH64.exe" >nul 2>&1

:: VisiSonics Audio Bloat.
taskkill /f /im VSHelper.exe >nul 2>&1
taskkill /f /im VSSrv.exe >nul 2>&1
net stop "VSSrv" >nul 2>&1
sc config VSSrv start=disabled >nul 2>&1
rd /s /q "C:\Windows\System32\VSHelper.exe" >nul 2>&1
rd /s /q "C:\Windows\System32\VSSrv.exe" >nul 2>&1
exit
