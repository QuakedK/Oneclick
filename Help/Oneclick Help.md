# Oneclick: Fixes, Help and More!

1. Oneclick Doesn't install?
   
Try using a different "Browser", Go to your browser and open downloads and right click and press "Keep", Disable "Windows Defender" by opening windows security & going to real time threat protection and turning it off.
___

2. Oneclick Not Opening.
   
Try disabling Windows Defender/any other antivirus, Drag Oneclick to your desktop, Possibly enable UAC or use [NSudo](https://github.com/M2TeamArchived/NSudo/releases/tag/9.0-Preview1)!
___

3. Wifi.
   
Run the "Wifi Fixer" within the Extra's Section of Oneclick or Download the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Turn%20On%20Wifi.bat). It's also possible you may have disabled Wifi by doing the Wifi Device Manager Tweaks, Network Tweaks or by running Process Destoryer. I'd Recommend using your restore Point!
___

4. Bluetooth.
   
Run [Service Control](https://github.com/QuakedK/Downloads/blob/main/Service%20Control.bat) as admin and re-enable everything from  C, E, G, I, K, to M. (Not recommended, many unnecessary services get reenabled)
___

5. Windows Security/Defender.
   
Open [Security Health Setup](https://github.com/QuakedK/Downloads/blob/main/securityhealthsetup_e16941e14861a6d24750ecdf05c548189b33182a.exe) as admin and restart or run [Win Defend Fix](https://github.com/QuakedK/Downloads/blob/main/Win%20Defend%20Fix.bat) as admin and type Yes then restart, or try this [Video](https://www.youtube.com/watch?v=P5Y9EASsK9Y)
___

6. Can't Run run or open files.
   
Re-enenable UAC or Drag the file to your Desktop! 

Can also run [NSudo](https://github.com/QuakedK/Downloads/raw/main/NSudoLG.exe), just click "Enable All Privileges" and drag you file into NSudo. 

If you get a error saying trusted installer, open cmd as admin and paste sc config TrustedInstaller start=auto

if you get failed to created process, open cmd as admin "YourNSudoPATH" -ShowWindowMode:Show -U:T -P:E "APPyouCANTopenPATH"
___

7. Powerplan doesn't show up.

Open Cmd as admin and paste reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v PlatformAoAcOverride /t REG_DWORD /d 0 /f then restart. The powerplans should be visable now!
