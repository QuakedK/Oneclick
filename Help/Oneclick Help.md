# Oneclick: Fixes, Help and More! | [Discord Server](https://discord.gg/B8EmFVkdFU)

1. Oneclick Doesn't install/Doesn't open.

(Doesn't install)
Try using a different browser to download Oneclick, if the problem still persist open your browser and go to the "Downloads" section, then right-click the file and select "Keep." It's possible your Anti-Virus/Windows Defender is falsely flagging Oneclick, to disable Windows Defender, open Windows Security, navigate to "Real-Time Protection," and turn it off.

(Doesn't open)
Right click Oneclick, open "properties" and check "Unblock."
___

2. Can't run or open files.
   
Try dragging the file to your desktop, download and run [UAC Enabler](https://github.com/QuakedK/Downloads/blob/main/UAC%20Enabler.bat) as admin or Right clicking the file, open "properties" and check "Unblock"

___   

3. Wifi.
   
Run the "Wifi Fixer" within the Extra's Section of Oneclick or Download the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Wifi%20Fixer%20V3.0.bat) and run it as admin!

It's also possible you may have disabled Wifi by doing the Wifi Device Manager Tweaks, Network Tweaks or by running Process Destoryer. Device Manager Tweaks include a Wifi Device disabler that disables wifi devices which need to be renabled in device manager. Network Tweaks may cause connection issues and brick your wifi driver therefore we recommend avoiding it or using a restore point to revert them. Process Destoryer disables wifi permanently, therefore you'll have to avoid Process Destoryer to use wifi.
___

4. Bluetooth.

Run the [Bluetooth Fixer](https://github.com/QuakedK/Downloads/blob/main/Bluetooth%20Fixer.bat) or run [Service Control](https://github.com/QuakedK/Downloads/blob/main/Service%20Control.bat) as admin and re-enable everything from  C, E, G, I, K, to M. (Not recommended, many unnecessary services get re-enabled)
___

5. Windows Security/Defender.
   
Try running the [Security Health Setup](https://github.com/QuakedK/Downloads/blob/main/securityhealthsetup_e16941e14861a6d24750ecdf05c548189b33182a.exe) as admin and restart. If it doesn't work try running [Win Defend Fix](https://github.com/QuakedK/Downloads/blob/main/Win%20Defend%20Fix.bat) as admin and type Yes then restart or alternatively watch this [Video](https://www.youtube.com/watch?v=P5Y9EASsK9Y) for additional help.
___

6. Rockstar Games Launcher.

Open CMD and paste sc config "Rockstar Service" start=demand then restart.

If that doesn't work and you're on enternet please run the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Turn%20On%20Wifi.bat) as admin!
___

7. Cloudflare Warp.

Open CMD and paste sc config "WlanSvc" start=auto &&  sc config "Wcmsvc" start=auto then restart.
___

8. Taskbar stuck.

If your Taskbar becomes stuck or overlays while in fullsceen, Simply open Task Manager and Restart Explorer.exe.
Open shell is the cause of this problem and can be easily fixed permanently by System Restoring and not removing search when asked.

[Explorer Restart File](https://github.com/QuakedK/Downloads/blob/main/Explorer%20Restart.bat)
___

9. No browser after Oneclick.

As stated in the in the [Unsupported List](<https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md>), Microsoft Edge gets deleted. Althought don't panic you can install another browser via CMD, following the steps below <3

(How to install another browser via CMD)
1. Open "Cmd" as admin.
2. Type set "fileURL=https://dl.google.com/chrome/install/latest/chrome_installer.exe"
3. Type set "fileName=ChromeSetup.exe"
4. Type set "downloadsFolder=%USERPROFILE%\Downloads\"
5. Type curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
6. Open file explorer and navigate to your "Downloads Folder" and "chrome_installer.exe" should be there!

[Example Picture](https://imgur.com/a/Q9rWHqr)
___

10. Can't Search.

Oneclick has a optional feature to remove search, If you choose "Yes" to removing search the only way to get it back is by system restoring as Oneclick highlighted in red text. However if you didn't remove search the assumption is you likely did Process Destroyer. As stated in the [Process Destroyer Unsupported List](<https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md>), If ran Windows Search completely breaks recommending the user to use [Open Shell](<https://github.com/Open-Shell/Open-Shell-Menu>) as the alternative.

(How to System Restore without the ability to search)
1.  Click "Winkey + R" then type "rstrui.exe"
2. Once in the System Restore click next and choose your "Restore Point."
Having trouble? Watch this excellent [tutorial](<https://www.youtube.com/watch?v=reOct_5rm00>)!
___

11. Can't Login.

Experiencing Issues trying to login After Running Oneclick or Process Destroyer?

As explained in the [Process Destroyer Requirements](<https://github.com/QuakedK/Process-Destroyer/blob/main/Requirements.md>), you need to have had install windows without signing into a Microsoft account. It does not matter if you were currently logged into a offline/local accouunt or it displays that you are, regardless you needed to do the offline account install/method upon setting up windows.

Offline/Local Account Tutorial. [Windows 11](<https://youtu.be/VOtOEEGxbu4?si=Q9WdHbVFJQExuPk8>)/[Windows 10](<https://www.youtube.com/watch?v=rHEgHumzjVQ>)

(How to Restoring without logging in)
[Tutorial](<https://www.tiktok.com/t/ZTYoQrNHx/>)    
___

12. How to System Restore?
    
Search for "Create a restore point" and select it.  
Once in "System Protection," click "System Restore," then click "Next".  
Select "Oneclick Restore Point" and follow the prompts to restore your system.  
Having trouble? Watch this excellent [tutorial](<https://www.youtube.com/watch?v=reOct_5rm00>)!

(Can't restore after doing Process Destroyer?)
Watch this [Tutorial](https://www.tiktok.com/t/ZTYoQrNHx/)!
___

13. Powerplan doesn't show up.

Open Cmd as admin and paste reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v PlatformAoAcOverride /t REG_DWORD /d 0 /f then restart. The powerplans should be visable now!

___

14. Xbox Controller not connecting via cable.

Open Cmd as admin and paste
1. sc config "DeviceAssociationService" start=auto
2. sc config "DmEnrollmentSvc" start=auto 
3. sc config "dmwappushservice" start=auto
4. sc config "DeviceInstall" start=auto
then restart.

___

15. Epic games not installing or crashing.

Open CMD and paste sc config "EpicGamesUpdater" start=auto &&  sc config "EpicOnlineServices" start=auto then restart.

___

16. DPC  Checker not running on start up. (Unknown Issue)

Download [Start DPC Checker Oneclick Ver](https://github.com/QuakedK/Downloads/blob/main/Start%20DPC%20Checker%20Oneclick%20Ver.bat) and then click Winkey + R = Shell:startup and drag the newly download bat into the folder, then restart!

Tired of the UAC prompt? Open CMD and paste reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v EnableLUA /t REG_DWORD /d 0 then restart.

Don't want to disable UAC? Use [BatToEXEPortable](https://github.com/Makazzz/BatToExePortable) and convert the Start DPC Checker.bat to an exe and drag it into the Shell:startup folder then right click > Properties > Compatibility and then check "Run this program as an Administrator"

(Unknown Issue) Unsure why some systems have DPC Checker open fine via the registry and other's don't.
___

17. Brightness Control

Laptop User report issues controlling their brightness, how ever you can easily solve that by using [Gamma Manager](https://github.com/luan5431/Gamma-Manager).

___
