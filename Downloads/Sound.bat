@echo off
:: Define Paths
set "DriverStorePath=C:\Windows\System32\DriverStore\FileRepository"
set "FilePattern=realtekservice.inf_amd64_*"
set "System32Path=C:\Windows\System32"
set "LogFile=cleanup.log"

:: Initialize Log
echo Cleanup Script Started - %date% %time% > "%LogFile%"

:: Realtek Audio Cleanup
echo Cleaning Realtek Audio... >> "%LogFile%"
taskkill /F /IM RtkAudUService64.exe >nul 2>&1
sc query RtkAudioUniversalService >nul 2>&1 && (
    net stop "RtkAudioUniversalService" >nul 2>&1
    sc config RtkAudioUniversalService start=disabled >> "%LogFile%" 2>&1
)
for /d %%G in ("%DriverStorePath%\%FilePattern%") do (
    echo Deleting: %%G >> "%LogFile%"
    rd /s /q "%%G" >nul 2>&1
)

:: Sound Research Audio Cleanup
echo Cleaning Sound Research Audio... >> "%LogFile%"
taskkill /f /im SECOMNService.exe >nul 2>&1
taskkill /f /im SECOCL.exe >nul 2>&1
sc query SECOMNService >nul 2>&1 && (
    net stop "SECOMNService" >nul 2>&1
    sc config SECOMNService start=disabled >> "%LogFile%" 2>&1
)
del /f /q "%System32Path%\SECOMN64.exe" >nul 2>&1
del /f /q "%System32Path%\SECOCL64.exe" >nul 2>&1
del /f /q "%System32Path%\SECCNH64.exe" >nul 2>&1

:: VisiSonics Audio Cleanup
echo Cleaning VisiSonics Audio... >> "%LogFile%"
taskkill /f /im VSHelper.exe >nul 2>&1
taskkill /f /im VSSrv.exe >nul 2>&1
sc query VSSrv >nul 2>&1 && (
    net stop "VSSrv" >nul 2>&1
    sc config VSSrv start=disabled >> "%LogFile%" 2>&1
)
del /f /q "%System32Path%\VSHelper.exe" >nul 2>&1
del /f /q "%System32Path%\VSSrv.exe" >nul 2>&1

:: Finalize
echo Cleanup Completed - %date% %time% >> "%LogFile%"
exit
