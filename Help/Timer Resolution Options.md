# Timer Resolution Options

<img width="978" height="512" alt="image" src="https://github.com/user-attachments/assets/2adcb8a5-22a8-4961-b5af-39560fc5eb25" />

```
SetTimerResolution.exe --resolution "Custom Value" --no-console
```
# Whats Timer Resolution?

Windows has an internal system clock called the "System Timer." This is what the OS uses to schedule tasks, check timeouts, handle sleep intervals, and keep time-based stuff in sync.

The System Timer ticks every 15.6 ms, which is equal to 64 Ticks Per Second.

When using [SetTimerResolution](https://github.com/valleyofdoom/TimerResolution) you’re effectively requesting a higher-precision clock by calling the native system function [NtSetTimerResolution](http://undocumented.ntinternals.net/index.html?page=UserMode%2FUndocumented%20Functions%2FTime%2FNtSetTimerResolution.html), which is a function lives inside ntdll.dll and directly tells the Windows kernel how often the system clock should tick.

# What Timer Resolution Affects?

Changing the Timer Resolution affects how often the CPU wakes up to handle scheduled events.
A lower "faster" resolution means the system timer ticks more frequently, which has both upsides and downsides:

Lowering the timer resolution has a system-wide effect, meaning it impacts the entire operating system globally, not just the process that requested it. Once the resolution is lowered, every part of the system runs on that faster timing interval until it’s released or reset.

This faster timing directly influences how reactive the system feels under load, especially in latency-sensitive environments like gaming or real-time rendering. With a shorter tick interval, the kernel and scheduler operate on a finer time base, meaning input, rendering, and background scheduling occur with less delay between signal and execution. The CPU no longer sits idle waiting for the next 15-millisecond tick before handling queued work.

At the desktop and system level, the lower resolution or higher frequency timing sharpens the responsiveness of the user interface and general multitasking. Context switches, process wake-ups, and deferred procedure calls occur sooner, so windows react more immediately.

# Which Timer Resolution Value Should You Use?

Timer resolution is much more complex than putting the resolution at 0.5 ms. From what I can understand, the general idea is the lower the resolution the less stable the timer will become. This is the reason why most knowledgeable people don't actually set the resolution at 0.50ms. However slightly increasing the resolution can help it stabilize itself, giving a more stable and desired result.

In order to test how stable your current resolution is at, we use an application called [MeasureSleep](https://github.com/valleyofdoom/TimerResolution/releases/tag/MeasureSleep-v1.0.0). In MeasureSleep, we specifically look at something called Deltas. The Delta section shows how far off the actual sleep time was from what you asked for, essentially meaning the smaller the deltas are the more precise your timer is.

<img width="5563" height="1200" alt="481276512-f8cdf2cf-c087-4d95-a2d8-2cd124b3180f (3)" src="https://github.com/user-attachments/assets/7f99f369-6191-4227-b398-405ac3e1accc" />

If you take a look at the following picture, you can see how the "Resolution Value" affects the Deltas. Showing the lower the resolution (0.5ms), the more unstable the timer becomes however it also shows simpley increasing the resolution can also make it worse. This means we need to find a sweet spot, that isn't too low and isn't to high leading to a stable resolution.

# Testing Timer Resolution?

> [!NOTE]
> Make sure Visual C++ 2015–2022 Redistributable is installed, its runtimes are needed to run Amit's Timer Resolution.

To go about testing resolutions, you don't necessarily need to manually test the resolution with MeasureSleep, you can use [Amit's](https://github.com/valleyofdoom) own [micro-adjust-benchmark](https://github.com/valleyofdoom/TimerResolution/blob/main/micro-adjust-benchmark.ps1). Which allows us to messure timer related information and view it by plotting it at [Draxlr](https://www.draxlr.com/tools/line-chart-generator/). You can also use other benchmarking programs like 
Hickensa's [Microadjust](https://github.com/HickerDicker/microadjust) to virtually do the same thing.

However simply running those benchmarking applications, won't necessarily give us accurate results because there's an additional step required.
When benchmarking your resolution, it need to be down under system load allowing for an accurate method of testing the stability of a resolution. Most people prefer running Prime95, a common stress testing utility, with small FFTs selected while running either Amit's micro-adjust-benchmark or Hickensa's Microadjust.

&nbsp;1. Download [Timer Resolution Setup](https://github.com/QuakedK/Scripting-Station/blob/main/Packs/Timer%20Resolution/Timer%20Resolution%20Setup%20V1.0.bat) and [Prime95](https://download.mersenne.ca/gimps/v30/30.19/p95v3019b20.win64.zip).

&nbsp;2. Now run "Timer Resolution Setup V1.0.bat".

&nbsp;3. Then restart your PC to have the BCDEdits and GlobalTimerResolutionRequests Reg Key take affect.

&nbsp;4. Extract the Prime95 folder and open "prime95.exe", click just stress testing, select "Small FFTs", then click ok.

&nbsp;5. Open Powershell as admin and paste the following ↓
```
& "C:\Timer Resolution Resources\micro-adjust-benchmark.ps1"
```
The Resolution Benchmark will begin, when it's done it will say "results saved in results.txt" which is "C:\Timer Resolution Resources\results.txt".

&nbsp;6. Once done go to [Draxlr](https://www.draxlr.com/tools/line-chart-generator/), on the top left click "CSV", once the file explorer pops up change the file type to all files.

&nbsp;7. Now navigate to "C:\Timer Resolution Resources\results.txt" and select it, then on the right change click on X-Axis and select RequestedResolutionMs, then change Y-Axis (Not Secondary X-Axis) to DeltaMs.

&nbsp;8. Then find the lowest point, and note down the Resolution number.
<img width="1635" height="911" alt="image" src="https://github.com/user-attachments/assets/9b1d7afd-a1de-4f27-9ced-133ce41e10d4" />

&nbsp;9. Now open cmd as admin and paste the following ↓ Change "Lowest Value Goes Here" with your lowest value.

> [!NOTE]
> Change "Lowest Value Goes Here" with your lowest value. Example "Lowest Value Goes Here" -> --resolution 5035 --no-console"

```
:: Command
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TimerResolution" /t REG_SZ /d "C:\Timer Resolution Resources\SetTimerResolution.exe --resolution "Lowest Value Goes Here" --no-console" /f >nul 2>&1

:: Example
"C:\Timer Resolution Resources\SetTimerResolution.exe --resolution 5040 --no-console"
```

&nbsp;10. Now Restart and then open [MeasureSleep](https://github.com/valleyofdoom/TimerResolution/releases/tag/MeasureSleep-v1.0.0) confirming if the Resolution is changed to the value you set.

<img width="979" height="512" alt="5040" src="https://github.com/user-attachments/assets/99099608-e373-46b4-8fe2-b9b33afaacda" />

# What Values Do I Recommend?

I wouldn't necessarily recommend a value for everyone, but as far as I've observed with OneClick 7.0, most people tend to have lower deltas on 5040. However If you're lazy going for a recommended value follow this guide.

```
5020
5040
5060
5070
5080
```
