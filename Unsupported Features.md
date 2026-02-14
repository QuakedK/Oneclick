# Unsupported or Disabled Features of Oneclick
> [!WARNING]
> Please carefully read the unsupported features listed below, as we are not responsible for any issues that may occur due to not carefully reading said list.

___

# (All Microsoft Related things)

Example: Microsoft Store, Microsoft Apps, Microsoft Edge, Microsoft Login, Microsoft Account, & OneDrive.

**Note: Microsoft Store, Microsoft Apps, Microsoft Edge and OneDrive get deleted.**
___

# (All Xbox Related things & Games)

Example: Xbox Game Bar, Xbox DVR, Xbox App, Xbox Login, or any other Xbox related games.
___

# (Minecraft)

You cannot play the Windows store/Bedrock version of Minecraft due to the required services to login being disabled. The java version of Minecraft works using external clients  like, [Lunar Client](https://www.lunarclient.com/download) or [Badlion Client](https://www.badlion.net/).
___


# (Wi-Fi)

Oneclick natively disables Wi-Fi, however it can simply be re-enabled by running the [Wi-Fi Fixer](https://github.com/QuakedK/Downloads/blob/main/Wifi%20Fixer%20V3.0.bat) located in the End/Extras section of Oneclick. The Wifi fixer doesn't account for external tools or tweaks like [Process Destroyer](https://github.com/QuakedK/Process-Destroyer) or [Network Tweaks](https://github.com/QuakedK/Oneclick/blob/main/Help/Device%20Manager%20Tweaks.md). For more information regarding Wi-Fi and external tools, please read [Wi-Fi Help](https://github.com/QuakedK/Oneclick/edit/main/Help/Oneclick%20Fixes.md#1-wi-fi)!

___

# (Bluetooth)

Oneclick natively disables Bluetooth, but most Bluetooth devices with usb dongles allow for use and connection even after Oneclick. If your device has no dongle and requires full wireless connectivity, **I would not recommend using Oneclick**. The process of reverting Bluetooth is long and tedious, requiring you to enable a lot of disabled services basically making the debloat aspect of Oneclick useless. Hence on why there is no list fixer!
___

# (VPN)

Oneclick disables services and drivers that may mess with VPN connection, Vpn's/Apps like Exitlag and Cloudflare Warp are affected.

VPN connection might get restored by running the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Wifi%20Fixer%20V3.0.bat) as it restore WiFi, and related driver, services, etc.
___

# (Nvidia)

Example: Nvidia Control Panel, Nvidia App, Clipping and Overlays.

Oneclick natively disables Nvidia Services, however these services can easily be re-enabled restoring acesss to Nvidia Features. Learn to revert Nvidia Services here [Nvidia Revert](https://github.com/QuakedK/Oneclick/edit/main/Help/Oneclick%20Fixes.md#2-nvidia-nvidia-control-panel-nvidia-app-clipping-and-overlays)!

___

# (UAC)

Oneclick natively disables UAC/User Account Control, which can easily be re-enabled. However the [Appinfo Service](https://github.com/QuakedK/Scripting-Station/blob/main/System%20Docs/Services.md#application-information-service) must be re-enabled before doing so! Learn to revert UAC and Appinfo at [Appinfo BUG](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Fixes.md#14-the-service-cannot-be-started-either-because-it-is-disabled-or-because-it-has-no-enabled-devices-associated-with-it).
___





# (Rockstar Games Launcher) 

The Rockstar Games Launcher breaks, but can be easily fixed by re-enabling the service.

Open CMD and paste sc config "Rockstar Service" start=demand then restart.

If that doesn't work and you're on enternet please run the [Wifi Fixer](https://github.com/QuakedK/Downloads/blob/main/Wifi%20Fixer%20V3.0.bat) as admin!

___


# (Razer Apps) 

Razor apps have been reported to break and not work like razer synapse.
___

# (Opera Browser/Possible Obscure Browsers) 

The Opera browser appears to break, my assumption would be a tied driver or service being disabled causes the issue. 
Whatever Opera relys on might be dumb, as almost any other browser works fine!

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
But can easily be reverted at [Update Disabler Revert](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert.md#4-update-disabler)
___

# (Spotify)

Spotify may or may not break, as I'm still unsure of what exactly breaks spotify for some users but they report songs being greyed out. 
I'd recommend using the Website version of spotify not the Microsoft store version, as that may be the reported problem. [Spotify Website Ver](https://www.spotify.com/de-en/download/windows/) before doing Oneclick.
___

# (Task Scheduler)

Can easily be reverted at [Task Destroyer Revert](https://github.com/QuakedK/Oneclick/blob/main/Help/Oneclick%20Revert.md#5-task-destroyer--task-scheduler).
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

# (LockApp)
___

# (Process Destroyer)

> [!CAUTION]
> Not recommended, Process Destroyer is an optional feature at the end of Oneclick in the Additional Features section.
> You need to meet the [Process Destroyer Requirements](https://github.com/QuakedK/Process-Destroyer/tree/main#requirements) if you wish to use it, and if you do 
> Please read [Process Destroyer Unsupported Features](https://github.com/QuakedK/Process-Destroyer/blob/main/Unsupported%20Features.md) for important unsupported/disabled features information and fixes!

# Please Refer to the [Changelog](https://github.com/QuakedK/Oneclick/blob/main/Changelog.md) for any other potential unsupported features or information, We are not responsible for those who don't read up. If you need help go to [Oneclick Help](https://github.com/QuakedK/Oneclick#help)!
