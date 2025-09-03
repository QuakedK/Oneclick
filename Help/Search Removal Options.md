# Search Removal Options

# #1 Keep Search
This option is pretty self-explanatory and used for those who want to keep the basic and default Windows Search.

# #2 Remove Search
This option completely removes the basic Windows Search for a ligher alternative, known as [Open Shell Menu](https://github.com/Open-Shell/Open-Shell-Menu).

# #3 Known Issues After Removing Search.
1. User's won't be after to left click taskbar icons/apps.
2. User's won't be able to access the Wifi section due to not being able to left click taskbar related items.
However this can be easily fixed by selecting your Wifi before loggging in or Pressing Ctrl, Alt, Del and selecting Wifi there!
3. Taskbar might occasionally get stuck when in Windowed-Fullscreen or even Fullscreen but can be easily fixed by opening Task Manager and right clicking and restarting Explorer.exe or by downloading [Explorer Restart](https://github.com/QuakedK/Scripting-Station/blob/main/Scripts/Explorer/Explorer%20Restart%20V1.1.bat)!

# #4 Revert
> [!NOTE]
> If you created a System Restore Point, you can use that to revert the removal of search. <3

1. Open CMD and paste the following then restart.
```bat
:: Revert Service.
reg add "HKLM\System\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "3" /f

:: Revert exe's.
move /Y "C:\Oneclick Tools\Backup\Search\SearchHost.exe" "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\StartMenuExperienceHost.exe" "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\ShellExperienceHost.exe" "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\taskhostw.exe" "C:\Windows\System32"
```
