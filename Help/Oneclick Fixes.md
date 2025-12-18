# Oneclick Fixes
Because Oneclick disables all services, the users programs, apps, etc are bound to break or behave weirdly.
On this Github page, will go over some simple and easy fixes!

# Wi-Fi
As explained in the [Unsupported List](https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md#wifi), Wi-Fi is natively unsupported/disabled. However, it can be easily re-enabled by running the Wi-Fi Fixer located in the Extras or End Section of Oneclick.

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/7e1c261f-de17-484c-8651-14a8db7cf702" />

Note: If you created a Restore Point you can just use that <3

&nbsp;1. Simply rerun Oneclick.

&nbsp;2. Once you reach the End\Extras, select Fixers and then choose the Wi-Fi fixer.

> [!NOTE]
> Users who ran [Process Destroyer](https://github.com/QuakedK/Process-Destroyer), cannot simply use the Wi-Fi Fixer as Process Destroyer contains it's own unsupported list and disaabled features.
> However Process Destroyer can be reverted, which would allow the Wi-Fi Fixer to work. --> [Process Destroyer Revert](https://discord.com/channels/1315000415409934346/1315000415900794922/1341719257674682399)

# Epic Games launcher
Notability ever since the Epic Games Laucnher was updated or since Epic Online Services was introduced, the launcher tends to get stuck on updating.  (Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:** 

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "EpicGamesUpdater" start=auto 
sc config "EpicOnlineServices" start=auto 
```
&nbsp;2. Restart your pc!

# Rockstar Games Laucnher
Similar the Epic Games Laucnher fix, setting Rockstar Games to auto will also fix it. (Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:**

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "Rockstar Service" start=auto
```
&nbsp;2. Restart your pc!

# Cloudflare Warp
(Included in Oneclick, -> Extara's -> Fixers) 

**Manual Fix:**

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "WlanSvc" start=auto 
sc config "Wcmsvc" start=auto 
```
&nbsp;2. Restart your pc!

# Monitor Switching Back to 60hz
Seems to be related to 24H2 and onwards.

**Manual Fix:**

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config DispBrokerDesktopSvc start=auto 
```
&nbsp;2. Restart your pc!

# Restore Point
Oneclick Automatically runs [Update Disabler](https://github.com/QuakedK/Update-Disabler), which seemingly breaks the normal way of restoring through Windows.

<img width="854" height="484" alt="image" src="https://github.com/user-attachments/assets/810cffaf-5ef0-4eae-aa81-878b5b11fc16" />

**Work Around:** 

&nbsp;1. Hold Shift and click Restart.

&nbsp;2. Once in Advanced Recovery, click Troubleshoot -> Advanced Options -> System Restore

Having trouble navigating in Advanced Recovery? Watch this excellent [tutorial!](https://youtube.com/shorts/v1K0BQoV34A?feature=share)

**Revert Update Disabler:** (Fixes the normal way of restoring through Windows)

1. Open CMD and Paste the following.
```
sc config TrustedInstaller start=auto
```
2. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
3. Then type CMD in the Address Bar, then click run and paste the following commands.
```bat
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\PolicyBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\WindowsUpdateServiceBackup.reg" 
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\UpdateOrchestratorServiceBackup.reg"
reg import "C:\Oneclick Tools\Update Disabler\Reg Backup\WindowsUpdateMedicServiceBackup.reg"
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f

move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\DoSvc.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\DoSvc.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MoNotificationUxStub.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers1.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\MusUpdateHandlers1.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\Sihclient.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\sihclient.exe.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UIEOrchestrator.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdateAgent.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdateCompression.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\SysWOW64\UpdateCompression.dll" "C:\Windows\SysWOW64"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\updatecsp.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\updatepolicy.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdatePolicy.dll.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpdateReboot.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpgradeResultsUI.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UpgradeResultsUI.exe.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\upfc.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\UsoClient.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\WaaSAssessment.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\WaaSMedicPS.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\WaaSMedicSvc.dll" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\wuauclt.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\wusa.exe" "C:\Windows\System32"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\System32\wusa.exe.mui" "C:\Windows\System32\en-US"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\SysWOW64\wusa.exe" "C:\Windows\SysWOW64"
move /Y "C:\Oneclick Tools\Update Disabler\Apps Backup\USS" "C:\Windows\UUS"

sc config TrustedInstaller start=auto >nul 2>&1
sc config uhssvc start=auto >nul 2>&1
sc config BITS start=auto >nul 2>&1
sc config DoSvc start=auto >nul 2>&1
```
4. Restart your pc!

# Taskbar Issues

> [!NOTE]
> Most of the following issues, are related to how Oneclick removes Search related components upon, the user selecting the removal of search.

1. User's won't be after to left-click taskbar icons/apps.
2. User's might be able to access Wifi on taskbar due to not being able to left-click taskbar related items.
However this can be easily fixed by selecting your Wifi before loggging in or Pressing Ctrl, Alt, Del and selecting Wifi there!
3. Taskbar might occasionally get stuck when in Windowed-Fullscreen or even Fullscreen but can be easily fixed by opening Task Manager and right clicking and restarting Explorer.exe or by downloading [Explorer Restart](https://github.com/QuakedK/Scripting-Station/blob/main/Scripts/Explorer/Explorer%20Restart%20V1.1.bat)!

**Revert Search Removal:**
1. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Revert Service.
reg add "HKLM\System\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "3" /f

:: Revert exe's.
move /Y "C:\Oneclick Tools\Backup\Search\SearchHost.exe" "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\StartMenuExperienceHost.exe" "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\ShellExperienceHost.exe" "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\taskhostw.exe" "C:\Windows\System32"
```
3. Install [Microsoft Edge](https://www.microsoft.com/en-us/edge/download?form=MA13FJ) in order to get web2 back which is required to use search on 24H2+.
4. Unintall Openshell.

# Can't Search

Oneclick has a optional feature to remove search, meaning likely the reason you can't search is due to choosing "Yes" to removing it. If removed it automatic downloads and install the alternative [Open Shell](https://github.com/Open-Shell/Open-Shell-Menu), however their could be possibility it may have not installed.

**Immediate Fix:**
1. Download [Open Shell](https://github.com/Open-Shell/Open-Shell-Menu).

**Revert Search Removal:**
1. Open [Nsudo](https://github.com/QuakedK/Task-Destroyer/raw/refs/heads/main/Downloads/NSudoLG.exe) and Enable All Privileges.
2. Then type CMD in the Address Bar, then click run and paste the following commands.
```
:: Revert Service.
reg add "HKLM\System\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "3" /f

:: Revert exe's.
move /Y "C:\Oneclick Tools\Backup\Search\SearchHost.exe" "C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\StartMenuExperienceHost.exe" "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\ShellExperienceHost.exe" "C:\Windows\SystemApps\ShellExperienceHost_cw5n1h2txyewy"
move /Y "C:\Oneclick Tools\Backup\Search\taskhostw.exe" "C:\Windows\System32"
```
3. Install [Microsoft Edge](https://www.microsoft.com/en-us/edge/download?form=MA13FJ) in order to get web2 back which is required to use search on 24H2+.
4. Unintall Openshell.

# Can't login

As explained in the [Process Destroyer Requirements](https://github.com/QuakedK/Process-Destroyer/blob/main/Requirements.md), you need to have had install windows without signing into a Microsoft account. It does not matter if you were currently logged into a offline/local accouunt or it displays that you are, regardless you needed to do the offline account install/method upon setting up windows.

Offline/Local Account Tutorial. [Windows 11](https://youtu.be/VOtOEEGxbu4?si=Q9WdHbVFJQExuPk8)/[Windows 10](https://www.youtube.com/watch?v=rHEgHumzjVQ)

**Restore:**
1. Watch the this [Tutorial](https://www.tiktok.com/t/ZTYoQrNHx/).

# Devices not working or connecting.

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

# Brightness Control

Laptop User report issues controlling their brightness.

**Immediate Fix:**
1. Download [Gamma Manager](https://github.com/luan5431/Gamma-Manager).

# DPC Checker not running on start up

DPC Checker not opening is Unknown Issue, however if it happens following the fix below.

**Manual Fix:**
1. Download [Start DPC Checker Oneclick Ver](https://github.com/QuakedK/Downloads/blob/main/Start%20DPC%20Checker%20Oneclick%20Ver.bat).
2. Then click Winkey + R and in the run box type, Shell:startup and drag the newly downloaded bat into the startup folder, then restart!

# Windows Security not opening.

Windows Security may break, causing a infinite black screen in the application. This issue may be fixed by resetting various Policies.

**Manual Fix:**
1. Download and run [Policies Revert](https://github.com/QuakedK/Downloads/blob/main/Win%20Defend%20Fix.bat)
2. Then download and run [Security Health Setup](https://github.com/QuakedK/Downloads/blob/main/securityhealthsetup_e16941e14861a6d24750ecdf05c548189b33182a.exe).

# No browser after Oneclick.

As stated in the in the [Unsupported List](https://github.com/QuakedK/Oneclick/blob/main/Unsupported%20Features.md), Microsoft Edge gets deleted. Althought don't panic you can install another browser via CMD, following the steps below <3

**Manual Fix:**
1. Open "Cmd" as admin and type the following.
```
set "fileURL=https://dl.google.com/chrome/install/latest/chrome_installer.exe"
set "fileName=ChromeSetup.exe"
set "downloadsFolder=%USERPROFILE%\Downloads\"
curl -s -L "%fileURL%" -o "%downloadsFolder%\%fileName%"
```
2. Open file explorer and navigate to your "Downloads Folder" and "chrome_installer.exe" should be there!




