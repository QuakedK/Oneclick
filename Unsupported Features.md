# Unsupported or Disabled Features of Oneclick
⚠️ **Please read carefully, we are not responsible for any issues that may occur:**
___

# (All Microsoft Related things)

Example: Microsoft Store, Microsoft Apps, Microsoft Edge, Microsoft Login, Microsoft Account, & OneDrive.

**Note: Microsoft Store, Microsoft Apps, Microsoft Edge and OneDrive get deleted.**
___

# (All Xbox Related things & Games)

Example: Xbox Game Bar, Xbox DVR, Xbox App, Xbox Login, or any other Xbox related games.
___

# BattleEye AntiCheat

Example: Any game using BattleEye AntiCheat like R6, WarThunder, etc.

This issue is likely related to either Update Disabler, Driver Disabler, or possibly the Xbox Bloat Remover and needs to be looked into.
This problem is exclusive to V7.5 and isn't an issue if the user run V7.0.

___

# (Minecraft)

You cannot play the Windows store/Bedrock version of Minecraft due to the required services to login being disabled. The java version of Minecraft works using [Minecraft Legacy Launcher](https://aka.ms/minecraftClientWindows), [Lunar Client](https://www.lunarclient.com/download) or [Badlion Client](https://www.badlion.net/).
___

# (Rockstar Games Launcher) 

The Rockstar Games Launcher breaks, but can be easily fixed by re-enabling the service.

Open CMD and paste sc config "Rockstar Service" start=demand then restart.

If that doesn't work and you're on enternet please run the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Turn%20On%20Wifi.bat) as admin!
___

# (Razer Apps) 

Razor apps have been reported to break and not work like razer synapse.
___

# (Bluetooth)

Natively Oneclick disables Bluetooth, but most Bluetooth devices with usb dongles allow for use and connection even after Oneclick. If your device has no dongle and requires full wireless connection I would not recommend using Oneclick. The process of reverting Bluetooth is long and tedious, requiring you to enable a lot of disabled services basically making the debloat aspect of Oneclick useless.
___

# (Wifi)

Natively Oneclick disables Wifi, but it can simply be turned on by running the Wifi Fixer in the End/Extras section of Oneclick. You can also directly download the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Wifi%20Fixer%20V3.0.bat) here! Still having issues with wifi? Read [Oneclick Fixes](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Fixes.md#wi-fi)!

___

# (VPN)

Oneclick disables services that mess with VPN connection, Vpn's/Apps like Exitlag and Cloudflare Warp are affected.

Cloudflare Warp can easily be fixed by enabling WLAN AutoConfig and Windows Connection Manager.

Open CMD and paste sc config "WlanSvc" start=auto &&  sc config "Wcmsvc" start=auto then restart.
___

# (Snipping Tool)

The ability to use Windows key + Shift + S aka the default snipping tool gets disabled. Please use [LightShot](https://app.prntscr.com/en/download.html) or [Free Snipping Tool](https://freesnippingtool.com/download) Instead.
___

# (Clipboard)

The ability to copy and paste remains, but accessing the Clipboard doesn't. Please use [Clipclip](https://app.prntscr.com/en/download.html) or [Ditto](https://ditto-cp.sourceforge.io/) to access your Clipboard.
___

# (Power Saving & Hibernation Settings)

Oneclick disables power saving & hibernation settings, meaning I would recommend laptop user to be worry or careful using Oneclick. There's been Many laptop users of Oneclick that haven't reported anything so this is more of a warning.
___

# (IPv6)

Oneclick disables IPv6, but many people don't actually use it. You can easily renable it manually or using [IPv6 Reenable](https://github.com/QuakedK/Downloads/blob/main/IPv6%20Reenable.bat).
___

# (Windows Updates)

Unlike what the majority of people think, Windows Updates are not actually needed.
___

# (Spotify)

Spotify may or may not break, as I'm still unsure of what exactly breaks spotify for some users but they report songs being greyed out. 
I'd recommend using the Website version of spotify not the Microsoft store version, as that may be the reported problem. [Spotify Website Ver](https://www.spotify.com/de-en/download/windows/) before doing Oneclick.
___

# (Task Scheduler)
___

# (Storage Sense/Storage options in settings)
___

# (Printing)
___

# (Mircosoft Copilot)
___

# (Virtual Hard Disk)
___

# (Hyper-V Support/Virtualization)
___

# (Widgets)
___

# (Smart Screen & LockApp)
___

# (Sticky Keys)
___

# (Taskbar Widgets)
___

# (Process Destroyer)

**Not Recommended**: If you're curious

Process Destroyer is an optional feature at the end of Oneclick in the Extras section.

You Need to meet the [Process Destroyer Requirements](https://github.com/QuakedK/Process-Destroyer/blob/main/Requirements.md) if you wish to use it, and if you do 
Please Read [Process Destroyer Unsupported Features](https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md) for important unsupported/disabled features and fixes.

**Is Process Destroyer Recommended?:** Process Destroyer is not a recommended utility, as it destroys a lot of functionality which can be seen in the Unsupported List. And because of this Process Destroyer is considered an extreme service remover likely removing things the average user will almost always find necessary. A good example of a scenario the average user may face is windows installer being disabled meaning some programs and app's cannot be installed after Process Destroyer. However a good use case for Process Destroyer would be an advanced user who understands the fixes located in the Unsupported List understands the many ways to get around potential issues they may face. if you're a potential user who understands the fixes and doesn't mind the tedious task of sometimes re-enabling some things just to maximize your system then Process Destroyer is perfect for you!

**How much processes does Process Destroyer remove?:** After the idea use of Oneclick with no wifi idling for 15 minutes, you'll likly be around 40 including timer res and open shell. After the use of Process Destroyer it will drop by 10 Processses, making it 30 including timer res and open shell. This is exactly why we must stress Process Destroyer is not needed nor recommended to achieve a low process count! Only after you've done Oneclick and want to maximize your system even more is when Process Destroyer is recommended.
___

# Please Refer to the [changelog](https://github.com/QuakedK/Oneclick/blob/main/Changelog.md) for any other potential unsupported features or information, We are not responsible for those who don't read up. If you need help go to [Oneclick Help](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Help.md)!
