@echo off
:: (Quaked) App Installer.
:App Installer Return
cls
color D
chcp 65001 >nul 2>&1
echo.
echo.
echo.
echo.
echo.                                                  █████╗ ██████╗ ██████╗                                               
echo.                                                 ██╔══██╗██╔══██╗██╔══██╗                                              
echo.                                                 ███████║██████╔╝██████╔╝                                              
echo.                                                 ██╔══██║██╔═══╝ ██╔═══╝                                               
echo.                                                 ██║  ██║██║     ██║                                                   
echo.                                                 ╚═╝  ╚═╝╚═╝     ╚═╝                                                   
echo.                                                                      
echo.                         ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ 
echo.                         ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
echo.                         ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
echo.                         ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
echo.                         ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
echo.                         ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
echo. 
echo.
echo.
echo.                                                                          
echo Choose an option:
echo 1. VLC + Modern Looking theme (Video and Media Player)
echo 2. Spotify + Spicetify (Mircosoft Store Spotify uninstalled, use this one)        
echo 3. Openasar/Discord Tweak (Makes Discord lighter, Faster and more optimized!)
echo 4. Logitech Memory Manager (Logitech Ghub uninstalled use this as an alternative)
echo 5. Hidusbf (Overclocks usb polling rate input devices like Controllers)
echo 6. Dcontrol (Disables Windows Defender)
echo 7. Skip!

set /p option="Enter option number: "

if "%option%"=="1" (
    set "fileURL=1vXarsXIth4E7peNo0dR2P_QPE_0-r-3t"
    set "fileName=VLC.zip"
    set "startURL=https://www.videolan.org/vlc/download-windows.html"
    echo.
    echo.
    cls
    echo Base VLC looks ugly, using a custom theme helps!
    echo Theme installation instructions in the pack.
) else if "%option%"=="2" (
    set "fileURL=https:1Mm-JlOChMQMdQgc-iJ7d3U5-DSh-nY4G"
    set "fileName=Spicetify.zip"
    set "startURL=https://www.spotify.com/de-en/download/windows/"
    echo.
    echo.
    cls
    echo Spicetify Allows for custom theme and addons for spotify, but most importantly allows for adblock!
    echo Download Spotify directly from the Spotify website...
    echo instructions in the pack.
) else if "%option%"=="3" (
    set "fileURL=15LAsAGuYYURA0ZWAoEF3ytP7oyRH-b1P"
    set "fileName=Opensar.zip"
    echo.
    echo.
    cls
    echo Opensar makes discord lighter, Faster and more optimized!
    echo Installation instructions in the pack.
) else if "%option%"=="4" (
    set "fileURL=1EUUwHRHY4162KeYN9tUygL51EXtWry4G"
    set "fileName=OMM.zip"
    echo.
    echo.
    cls
    echo Logitech Ghub Was uninstalled use this instead! 
) else if "%option%"=="5" (
    set "fileURL=14WIiO3aHWcnY5esL3M03JrlnpDoCjeyQ"
    set "fileName=Hidusbf.zip"
    echo.
    echo.
    cls
    echo Video Instructions in the pack! 
) else if "%option%"=="6" (
    set "fileURL=1oFEOYWx97e7ps7msLbgdN5RiKFLKFdBx"
    set "fileName=7xsyz7.rar"
    echo.
    echo.
    cls
    echo Instructions in the pack!
    echo Password is sordum
) else if "%option%"=="7" ( 
    echo Skipping!
    timeout 1 > nul
    goto :SkipAPP  
)

set "downloadsFolder=%USERPROFILE%\Downloads"
chcp 65001 >nul 2>&1
echo.
echo ╔═════════════════════════════╗
echo ║                             ║
echo ║    Downloading resources    ║
echo ║                             ║
echo ╚═════════════════════════════╝
curl -s -L "https://drive.google.com/uc?export=download&id=%fileURL%" -o "%downloadsFolder%\%fileName%" 
if exist "%downloadsFolder%\%fileName%" (
    echo Download successful!
    if not "%startURL%"=="" (
        start "" "%startURL%"
        pause
    ) else (
        pause
    )
) else (
    echo Download failed.
    echo Skipping!
    timeout 1 > nul
    goto :SkipAPP
)
goto :App Installer Return

:SkipAPP
cls
echo App Installer skipped!
pause
