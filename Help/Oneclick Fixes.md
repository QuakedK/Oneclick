# Oneclick Fixes
Because Oneclick disables all services, the users programs, apps, etc are bound to break or behave weirdly.
On this Github page, will go over some simple and easy fixes!

# 1. Wi-Fi
As explained in the [Unsupported List](https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md#wifi), Wi-Fi is natively unsupported/disabled. However, it can be easily re-enabled by running the Wi-Fi Fixer located in the Extras or End Section of Oneclick.

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/7e1c261f-de17-484c-8651-14a8db7cf702" />

**Note: If you created a Restore Point you can just use that <3 or the [Wifi Fixer](https://github.com/QuakedK/Oneclick/blob/main/Downloads/Revert/Wifi%20Fixer%20V3.0.bat) can be downloaded.**

1. Simply rerun Oneclick.
2. Once you reach the End\Extras, select Fixers and then choose the Wi-Fi fixer.
3. Then Restart

> [!NOTE]
> Users who ran [Process Destroyer](https://github.com/QuakedK/Process-Destroyer), cannot simply use the Wi-Fi Fixer as Process Destroyer contains it's own unsupported list and disabled features.
> However Process Destroyer can be reverted, which would allow the Wi-Fi Fixer to work. --> [Process Destroyer Revert](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert%202.md#26-process-destroyer) and [Process Destroyer Extreme Revert](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert%202.md#27-process-destroyer-extreme).
>
> The same principle applies to network tweaks, as it may negatively impact you're network adapter which could result in Network Connection lose. -> [Network Tweaks Revert](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert.md#28-network-tweaks).

# 2. Nvidia (Nvidia Control Panel, Nvidia App, Clipping and Overlays)
**Revert Method 1** (If Nvidia GPU Tweaks were done)
1. Open right-click the destop and hover over ```NvidiaContainer```.
2. Click ```Nvidia Container ON```.

**Revert Method 2** (If  Nvidia GPU Tweaks weren't done)
1. Open CMD as admin and paste the following.
```
sc config NVDisplay.ContainerLocalSystem start=auto 
sc start NVDisplay.ContainerLocalSystem 
sc config NvContainerLocalSystem start=auto 
sc start NvContainerLocalSystem
```

# 3. Epic Games launcher
Notability ever since the Epic Games Laucnher was updated or since Epic Online Services was introduced, the launcher tends to get stuck on updating.  (Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:** 

1. Simple open CMD as admin and paste the following ↓
```
sc config "EpicGamesUpdater" start=auto 
sc config "EpicOnlineServices" start=auto 
```
2. Restart your pc!

# 4. Rockstar Games Laucnher
Similar the Epic Games Laucnher fix, setting Rockstar Games to auto will also fix it. (Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:**

1. Simple open CMD as admin and paste the following ↓
```
sc config "Rockstar Service" start=auto
```
2. Download and run the Oneclick [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Wifi%20Fixer%20V3.0.bat) as admin.
3. Restart your pc!

# 5. Taskbar Issues

> [!NOTE]
> Most of the following issues, are related to how Oneclick removes Search related components upon, the user selecting the removal of search.

1. User's won't be after to left-click taskbar icons/apps.
2. User's might be able to access Wifi on taskbar due to not being able to left-click taskbar related items.
However this can be easily fixed by selecting your Wifi before loggging in or Pressing Ctrl, Alt, Del and selecting Wifi there!
3. Taskbar might occasionally get stuck when in Windowed-Fullscreen or even Fullscreen but can be easily fixed by opening Task Manager and right clicking and restarting Explorer.exe or by downloading [Explorer Restart](https://github.com/QuakedK/Scripting-Station/blob/main/Scripts/Explorer/Explorer%20Restart%20V1.1.bat)!

**Revert Search Removal:**
1. Read [Revert Search](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert%202.md#14-search).

# 6. Can't Search

Oneclick has a optional feature to remove search, meaning likely the reason you can't search is due to choosing "Yes" to removing it. If removed it automatic downloads and install the alternative [Open Shell](https://github.com/Open-Shell/Open-Shell-Menu), however their could be possibility it may have not installed.

**Immediate Fix:**
1. Download [Open Shell](https://github.com/Open-Shell/Open-Shell-Menu).

**Revert Search Removal:**
1. Read [Revert Search](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert%202.md#14-search).

# 7. Can't login

As explained in the [Process Destroyer Requirements](https://github.com/QuakedK/Process-Destroyer/blob/main/Requirements.md), you need to have had install windows without signing into a Microsoft account. It does not matter if you were currently logged into a offline/local accouunt or it displays that you are, regardless you needed to do the offline account install/method upon setting up windows.

Offline/Local Account Tutorial. [Windows 11](https://youtu.be/VOtOEEGxbu4?si=Q9WdHbVFJQExuPk8)/[Windows 10](https://www.youtube.com/watch?v=rHEgHumzjVQ)

**Restore:**
1. Watch the this [Tutorial](https://www.tiktok.com/t/ZTYoQrNHx/).

# 8. Devices not working or connecting.

Oneclick disables a multitude of services, and some may interfere with device installation.

**Manual Fix:**
1. Open CMD as admin.
2. Paste then following commands.
```
sc config "DeviceAssociationService" start=auto
sc config "DmEnrollmentSvc" start=auto 
sc config "dmwappushservice" start=auto
sc config "DeviceInstall" start=auto
```

# 9. Brightness Control

Laptop User report issues controlling their brightness.

**Immediate Fix:**
1. Download [Gamma Manager](https://github.com/luan5431/Gamma-Manager).

# 10. DPC Checker not running on start up

DPC Checker not opening is Unknown Issue, however if it happens following the fix below.

**Manual Fix:**
1. Download [Start DPC Checker Oneclick Ver](https://github.com/QuakedK/Downloads/blob/main/Start%20DPC%20Checker%20Oneclick%20Ver.bat).
2. Then click Winkey + R and in the run box type, Shell:startup and drag the newly downloaded bat into the startup folder, then restart!

# 11. Windows Security not opening.

Windows Security may break, causing a infinite black screen in the application. This issue may be fixed by resetting various Policies.

**Manual Fix:**
1. Download and run [Policies Revert](https://github.com/QuakedK/Downloads/blob/main/Win%20Defend%20Fix.bat)
2. Then download and run [Security Health Setup](https://github.com/QuakedK/Downloads/blob/main/securityhealthsetup_e16941e14861a6d24750ecdf05c548189b33182a.exe).

# 12. No browser after Oneclick.

As stated in the in the [Unsupported List](https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md), Microsoft Edge gets deleted. Althought don't panic you can install another browser via CMD, following the steps below <3

**Easy Fix:**
1. Open file explorer and navigate to ```"C:\Oneclick Tools\Browser Download\Browser Downloader V1.0.bat"```.
2. Run it as admin!

**Manual Fix:**
1. Open "Cmd" as admin and type the following.
```
set "fileURL=https://dl.google.com/chrome/install/latest/chrome_installer.exe"
set "fileName=ChromeSetup.exe"
set "downloadsFolder=%USERPROFILE%\Downloads\"
curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
```
2. Open file explorer and navigate to your ```"Downloads Folder"``` and "chrome_installer.exe" should be there!

# 13. HVCI Anti-Cheat/Game Error

Oneclick disables Core Isolation / Memory Integrity, casuing Hypervisor-protected Code Integrity errors. However it can be easily re-enabled by following the steps below <3

**Manual Fix:**
1. Open "Cmd" as admin and type the following.
```
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "1" /f
```
2. Restart you're pc!

# 14. The service cannot be started, either because it is disabled or because it has no enabled devices associated with it
> [!NOTE]
> The following bug only occurs when is UAC is re-enabled or somehow didn't disable. 

<img width="555" height="194" alt="482180832-4c29503a-b915-4320-98ae-9fa821eb70bd" src="https://github.com/user-attachments/assets/2eb08c44-b184-4e9f-b3f8-f557f1cce24d" />


**Cause of issue**

[Appinfo Service](https://github.com/QuakedK/Scripting-Station/blob/main/System%20Docs/Services.md#application-information-service) is responsible for facilitating elevated privilege requests, meaning it allows apps to run as an admin. If disabled, apps can't request admin permissions meaning you can't open apps that request administrator. However disabling Uac/User Account Control, allows you to get away with disabling AppInfo. But if Uac is re-enabled the work around doesn't work and will cause the issue seen in the picture.

**How to fix?**
1. Hold Shift and click restart.
2. Click Troubleshoot, then Advanced options and then Startup Settings.
3. Click 4 to enable Safe Mode.
4. Once booted you can open things as admin, now Cmd and paste the following and restart!
```
:: Enable Appinfo
sc config Appinfo start=auto

:: Enable UAC
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
```

# 14. Logitech GHUB

Oneclick natively disables Logitech services, which can be easily re-enabled!

**Manual Fix:**
1. Open "Cmd" as admin and type the following.
```
sc config logi_lamparray_service start=auto 
sc config LGHUBUpdaterService start=auto 
```

