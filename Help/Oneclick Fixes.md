# Oneclick Fixes
Because Oneclick disables all services, the users programs, apps, etc are bound to break or behave weirdly.
On this Github page, will go over some simple and easy fixes!

# Wi-Fi
As explained in the [Unsupported List](https://github.com/QuakedK/Oneclick/edit/main/Unsupported%20Features.md#wifi), Wi-Fi is natively unsupported/disabled. However, it can be easily re-enabled by running the Wi-Fi Fixer located in the Extras or End Section of Oneclick.

<img width="800" height="419" alt="image (1)" src="https://github.com/user-attachments/assets/f01d9384-f362-4d18-8459-581de6205968" />

Note: If you created a Restore Point you can just use that <3

&nbsp;1. Simply rerun Oneclick.

&nbsp;2. Once you reach the End\Extras, select Fixers and then choose the Wi-Fi fixer.

> [!NOTE]
> Users who ran [Process Destroyer](https://github.com/QuakedK/Process-Destroyer), cannot simply use the Wi-Fi Fixer as Process Destroyer contains it's own unsupported list and disaabled features.
> However Process Destroyer can be reverted, which would allow the Wi-Fi Fixer to work. --> [Process Destroyer Revert](https://discord.com/channels/1315000415409934346/1315000415900794922/1341719257674682399)

# Epic Games Laucnher
Notability ever since the Epic Games Laucnher was updated or since Epic Online Services was introduced, the launcher tends to get stuck on updating.  (Included in Oneclick, -> Extara's -> Fixers) 

Manual Fix: 

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "EpicGamesUpdater" start=auto 
sc config "EpicOnlineServices" start=auto 
```
&nbsp;2. Restart your pc!

# Rockstar Games Laucnher
Similar the Epic Games Laucnher fix, setting Rockstar Games to auto will also fix it. (Included in Oneclick, -> Extara's -> Fixers) 

Manual Fix: 

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "Rockstar Service" start=auto
```
&nbsp;2. Restart your pc!

# Cloudflare Warp
(Included in Oneclick, -> Extara's -> Fixers) 

Manual Fix: 

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config "WlanSvc" start=auto 
sc config "Wcmsvc" start=auto 
```
&nbsp;2. Restart your pc!

# Monitor Switching Back to 60hz
Seems to be related to 24H2 and onwards.

Manual Fix: 

&nbsp;1. Simple open CMD as admin and paste the following ↓
```
sc config DispBrokerDesktopSvc start=auto 
```
&nbsp;2. Restart your pc!


