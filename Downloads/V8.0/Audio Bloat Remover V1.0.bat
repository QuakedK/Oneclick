:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun

:: Start Log.
echo [%DATE% %TIME%] Audio Bloat Remover V1.0: Successfully started. >> "C:\Oneclick Logs\Oneclick Log.txt"

:: Check if Realtek Service exist.
sc query "RtkAudioUniversalService" >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] Realtek Service Detection: Does not exist. >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
    goto :Sound_Research_Check
) else ( 
    echo [%DATE% %TIME%] Realtek Service Detection: Does exist. >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
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
    echo [%DATE% %TIME%] Realtek Path: %%G >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
    rd /s /q "%%G" >nul 2>&1
)

:: Check if Sound Research Service exist.
:Sound_Research_Check
sc query "SECOMNService" >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] Sound Research Service Detection: Does not exist. >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
    goto :VisiSonics_Check
) else ( 
    echo [%DATE% %TIME%] Sound Research Service Detection: Does exist. >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
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
sc query "SECOMNService" >nul 2>&1
if errorlevel 1 (
    echo [%DATE% %TIME%] VisiSonics Service Detection: Does not exist. >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
    goto :End
) else ( 
    echo [%DATE% %TIME%] VisiSonics Service Detection: Does exist. >> "C:\Oneclick Logs\Extra\Audio Bloat Log.txt"
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

:: End Log.
:End
echo [%DATE% %TIME%] Audio Bloat Remover V1.0: Successfully Ended. >> "C:\Oneclick Logs\Oneclick Log.txt"
exit
