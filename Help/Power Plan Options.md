# Power Plan Options

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/682f12a4-9015-40b5-816a-69d0189b6da1" />

# #1 Quaked Ultimate Performance
This Power Plan is an optimized verison of the regular Ultimate Performance Plan, with Standby States, Throttle States, Core Parking off.

# #2 Quaked Ultimate Performance Idle Off
This Power Plan is "Quaked Ultimate Performance" but with Idle States disabled.

> [!CAUTION]
> The Idle Off Power Plan is not recommended if you have poor cooling, high temperatures, or high electricity costs. Idle Off will draw significantly more power and increasing wattage, requiring sufficient cooling and more stable temperatures. The goal of Idle Off is to dramatically lower system latency, which may positively or negatively affect system performance/fps. Laptop User's should not even attempt to use Idle off.

# Power Plan Changes
it's the basic Ultimate Performance with the following changes!
```
Allow Away Mode Policy: No
Allow Standby States: Off
Allow Hybrid Sleep: Off
Allow Throttle States: Off
Processor performance core parking min cores: 100
Processor performance time check interval: 5000
Processor idle disable: enable idle or disable idle, depending on the plan chosen.
```

# Power Plan Import Failed?

If the power plan import failed, continue through Oneclick and once you restart you're PC follow these steps.

1. Download [Power Plan Import](https://github.com/QuakedK/Downloads/blob/main/(Quaked)%20Power%20Plan%20Import.bat) and re-import you're selected plan.

Why this works? Oneclick applies the following fix, meaning once you restart you're PC it works.
```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v PlatformAoAcOverride /t REG_DWORD /d "0" /f
```
