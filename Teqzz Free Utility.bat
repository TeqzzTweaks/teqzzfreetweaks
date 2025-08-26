@echo off
title Teqzz Free Tweaking Utility V2

cls
set w=[97m
set p=[95m
set b=[96m
chcp 65001 >nul 2>&1
cls
mode 800
color 0C
echo.
echo.
echo.
echo.
echo.
echo.
echo.                  ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗    ██╗   ██╗███████╗███████╗██████╗ ██╗
echo.                  ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝    ██║   ██║██╔════╝██╔════╝██╔══██╗██║
echo.                  ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗      ██║   ██║███████╗█████╗  ██████╔╝██║
echo.                  ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝      ██║   ██║╚════██║██╔══╝  ██╔══██╗╚═╝
echo.                  ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗    ╚██████╔╝███████║███████╗██║  ██║██╗
echo.                   ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝     ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝
echo.
echo.
echo.                                                       Press any key to continue...

pause >nul
cls
::Disable UAC
Reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f > nul

:: Enable ANSI Escape Sequences
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul

::Enable Delayed Expansion
setlocal EnableDelayedExpansion > nul
cls 

::Enable Restore points
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "RPSessionInterval" /f  >nul 2>&1
Reg.exe delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\SystemRestore" /v "DisableConfig" /f >nul 2>&1
Reg.exe add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d 0 /f  >nul 2>&1
powershell -ExecutionPolicy Unrestricted -NoProfile Enable-ComputerRestore -Drive 'C:\'>nul 2>&1
cls
echo.
echo.
echo.                      ██████╗ ███████╗███████╗████████╗ ██████╗ ██████╗ ███████╗
echo.                      ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝
echo.                      ██████╔╝█████╗  ███████╗   ██║   ██║   ██║██████╔╝█████╗  
echo.                      ██╔══██╗██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  
echo.                      ██║  ██║███████╗███████║   ██║   ╚██████╔╝██║  ██║███████╗
echo.                      ╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
echo. 
echo.
echo.                            DO YOU WANT TO MAKE A RESTORE POINT (Y/N)
echo.
set /p input=: 
if /i %input% == Y goto restore
if /i %input% == N goto menu

cls
set w=[97m
set p=[95m
set b=[96m
chcp 65001 >nul 2>&1
cls

goto menu
:Menu
color 5
cls
echo.
echo.            ███████╗██████╗ ███████╗███████╗    ██╗   ██╗████████╗██╗██╗     ██╗████████╗██╗   ██╗    ██╗   ██╗██████╗
echo.            ██╔════╝██╔══██╗██╔════╝██╔════╝    ██║   ██║╚══██╔══╝██║██║     ██║╚══██╔══╝╚██╗ ██╔╝    ██║   ██║╚════██╗
echo.            █████╗  ██████╔╝█████╗  █████╗      ██║   ██║   ██║   ██║██║     ██║   ██║    ╚████╔╝     ██║   ██║ █████╔╝
echo.            ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝      ██║   ██║   ██║   ██║██║     ██║   ██║     ╚██╔╝      ╚██╗ ██╔╝██╔═══╝
echo.            ██║     ██║  ██║███████╗███████╗    ╚██████╔╝   ██║   ██║███████╗██║   ██║      ██║        ╚████╔╝ ███████╗
echo.            ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝     ╚═════╝    ╚═╝   ╚═╝╚══════╝╚═╝   ╚═╝      ╚═╝         ╚═══╝  ╚══════╝
echo.
echo.
echo.                                                    [0] Download Resources
echo.
echo.                                        [1] Windows Tweaks             [2] Windows Debloat
echo.
echo.                                        [3] Game Priority              [4] CPU Tweaks
echo.
echo.                                        [5] Power Tweaks               [6] KBM Tweaks
echo.
echo.                                        [7] Network Tweaks             [8] Coming Soon...
echo.
echo.                     ══════════════════════════════════════════════════════════════════════════════════════
echo.
echo.                            [D] Discord Server     [P] Patch notes     [T] Want More?     [E] Exit
echo.
echo.
echo.                                        Teqzz Tweaks * Updated 14th of August 2025
echo.                     ══════════════════════════════════════════════════════════════════════════════════════
echo.
set /p input=: 
if /i %input% == 0 goto res
if /i %input% == 1 goto wt 
if /i %input% == 2 goto wd 
if /i %input% == 3 goto gp 
if /i %input% == 4 goto cpu
if /i %input% == 5 goto pt 
if /i %input% == 6 goto kbm
if /i %input% == 7 goto network
if /i %input% == D goto teqzz
if /i %input% == P goto patch
if /i %input% == T goto tt

:teqzz
start "" "https://discord.gg/PzkkvKcKjD" >nul
goto menu

:tt
start "" "https://www.payhip.com/teqzztweaks" >nul
goto menu

:restore
echo Creating restore point
powershell -Command "Checkpoint-Computer -Description 'Teqzz Free Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
goto menu

:gp
cls
echo.
echo.
echo.
echo.
echo.                                     ██████╗ ██████╗ ██╗ ██████╗ ██████╗ ██╗████████╗██╗   ██╗
echo.                                     ██╔══██╗██╔══██╗██║██╔═══██╗██╔══██╗██║╚══██╔══╝╚██╗ ██╔╝
echo.                                     ██████╔╝██████╔╝██║██║   ██║██████╔╝██║   ██║    ╚████╔╝
echo.                                     ██╔═══╝ ██╔══██╗██║██║   ██║██╔══██╗██║   ██║     ╚██╔╝
echo.                                     ██║     ██║  ██║██║╚██████╔╝██║  ██║██║   ██║      ██║
echo.                                     ╚═╝     ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝
echo.
echo.                        Game specific Priority Tweaks Apply Cpu, Gpu and Network Priority to specific games.  
echo.
echo.                                                            [1] Fortnite
echo.
echo.                                                            [2] Valorant       
echo.
echo.                                                            [3] Warzone
echo.
echo.
echo.                                                    Press "X" to go back to menu
echo.
echo.

set /p input=: 
if /i %input% == 1 goto fn
if /i %input% == 2 goto val
if /i %input% == 3 goto Warzone
if /i %input% == X cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 > nul
goto gp

:fn
cls
for %%i in (FortniteClient-Win64.exe) do (
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Application Name" /t REG_SZ /d "%%i.exe" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Version" /t REG_SZ /d "1.0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Protocol" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local Port" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local IP" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote Port" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote IP" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "DSCP Value" /t REG_SZ /d "46" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Throttle Rate" /t REG_SZ /d "-1" /f
)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "GpuPriorityClass" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriority" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "GpuPriority" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "Clock Rate" /t REG_DWORD /d "65536" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuThreadPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuThreadCount" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPrioritySeperation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "PowerLimitEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "IOPriorityClass" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "MaximumPerformanceEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "MaxPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "LowestPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "MinimumPerformanceEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "Io Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "HBFlagsSwitch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "PowerSettingProfile" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "SleepStudyDeviceAccountingLevel" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "WatchdogResumeTimeout" /t REG_DWORD /d "120" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "WatchdogSleepTimeout" /t REG_DWORD /d "300" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "POSTTime" /t REG_DWORD /d "8323" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "BootmgrUserInputTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "FwPOSTTime" /t REG_DWORD /d "8323" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "GpuSpeed" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /ve /t REG_SZ /d "True" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuCoresAlways" /t REG_DWORD /d "18" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuUtilization" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "LatencyPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "GpuPerformance" /t REG_DWORD /d "256" /f
pause
goto gp

:Warzone
cls
for %%i in (ModernWarfare.exe) do (
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Application Name" /t REG_SZ /d "%%i.exe" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Version" /t REG_SZ /d "1.0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Protocol" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local Port" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local IP" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote Port" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote IP" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "DSCP Value" /t REG_SZ /d "46" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Throttle Rate" /t REG_SZ /d "-1" /f
)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "GpuPriorityClass" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "CpuPriority" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "GpuPriority" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "Clock Rate" /t REG_DWORD /d "65536" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "CpuThreadPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "CpuPriorityControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "CpuThreadCount" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "CpuPrioritySeperation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "PowerLimitEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "IOPriorityClass" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "MaximumPerformanceEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "MaxPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "LowestPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "MinimumPerformanceEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ModernWarfare.exe\PerfOptions" /v "Io Priority" /t REG_DWORD /d "8" /f
pause
goto gp 

:val
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Application Name" /t REG_SZ /d "Valorantclient_win64_shipping.exe" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "DSCP value" /t REG_SZ /d "46" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Protocol" /t REG_SZ /d "UDP" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "throttle Rate" /t REG_SZ /d "_1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SOftWARE\Policies\Microsoft\Windows\QoS\valorant" /v "version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
for %%i in (ValorantClient-Win64-Shipping.exe) do (
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Application Name" /t REG_SZ /d "%%i.exe" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Version" /t REG_SZ /d "1.0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Protocol" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local Port" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local IP" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote Port" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote IP" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "DSCP Value" /t REG_SZ /d "46" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\QoS\%%i" /v "Throttle Rate" /t REG_SZ /d "-1" /f
)
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "GpuPriorityClass" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriority" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "GpuPriority" /t REG_DWORD /d "42" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "Clock Rate" /t REG_DWORD /d "65536" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuThreadPriority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuThreadCount" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "CpuPrioritySeperation" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "PowerLimitEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "IOPriorityClass" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "MaximumPerformanceEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "MaxPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "LowestPerformance" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "MinimumPerformanceEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ValorantClient-Win64-Shipping.exe\PerfOptions" /v "Io Priority" /t REG_DWORD /d "8" /f
pause
goto gp

:wd
cls
echo.
echo.
echo.
echo.         ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗    ██████╗ ███████╗██████╗ ██╗      ██████╗  █████╗ ████████╗
echo.         ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝    ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██╔══██╗╚══██╔══╝
echo.         ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗    ██║  ██║█████╗  ██████╔╝██║     ██║   ██║███████║   ██║
echo.         ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║    ██║  ██║██╔══╝  ██╔══██╗██║     ██║   ██║██╔══██║   ██║
echo.         ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║    ██████╔╝███████╗██████╔╝███████╗╚██████╔╝██║  ██║   ██║
echo.          ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝    ╚═════╝ ╚══════╝╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝
echo.
echo.
echo.                                              [W] What Does This Uninstall?
echo.
echo.                                           [D] Debloat        [R] Reinstall Apps  
echo.
echo.                                                     [C] Run Cleanup    
echo.
echo.
echo.                                              Press "X" to go back to menu
echo.

set /p input=: 
if /i %input% == W goto wdtu
if /i %input% == D goto debl
if /i %input% == R goto rein
if /i %input% == C goto clnp
if /i %input% == X goto menu

:wdtu
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Uninstalls: 3D Builder, Alarms and Clock, Calendar and Mail, Camera, Groove Music, Movies & TV, OneNote, People, Photos, Solitaire Collection, Sticky Notes, Xbox app, Xbox Game Bar, Xbox Console Companion, Paint 3D, Your Phone, Mixed Reality Portal.', 'Free Utility V2', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
goto wd

:rein
cls
:: Reinstall 3D Builder
powershell -Command "Get-AppxPackage -AllUsers *3dbuilder* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Alarms and Clock
powershell -Command "Get-AppxPackage -AllUsers *windowsalarms* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Calendar and Mail
powershell -Command "Get-AppxPackage -AllUsers *windowscommunicationsapps* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Camera
powershell -Command "Get-AppxPackage -AllUsers *windowscamera* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Groove Music
powershell -Command "Get-AppxPackage -AllUsers *zunemusic* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Movies & TV
powershell -Command "Get-AppxPackage -AllUsers *zunevideo* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall OneNote
powershell -Command "Get-AppxPackage -AllUsers *onenote* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall People
powershell -Command "Get-AppxPackage -AllUsers *people* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Photos
powershell -Command "Get-AppxPackage -AllUsers *photos* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Solitaire Collection
powershell -Command "Get-AppxPackage -AllUsers *solitairecollection* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Sticky Notes
powershell -Command "Get-AppxPackage -AllUsers *stickynotes* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Xbox app
powershell -Command "Get-AppxPackage -AllUsers *xboxapp* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Xbox Game Bar
powershell -Command "Get-AppxPackage -AllUsers *gamingoverlay* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Xbox Console Companion
powershell -Command "Get-AppxPackage -AllUsers *xbox* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Paint 3D
powershell -Command "Get-AppxPackage -AllUsers *paint3d* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Your Phone
powershell -Command "Get-AppxPackage -AllUsers *yourphone* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

:: Reinstall Mixed Reality Portal
powershell -Command "Get-AppxPackage -AllUsers *holographic* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"\$($_.InstallLocation)\AppXManifest.xml\"}"

echo Reinstalled Apps Click Any Key to Continue...
pause
goto wd

:debl
cls
:: Uninstall 3D Builder
powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
:: Uninstall Alarms and Clock
powershell -Command "Get-AppxPackage *windowsalarms* | Remove-AppxPackage"
:: Uninstall Calendar and Mail
powershell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
:: Uninstall Camera
powershell -Command "Get-AppxPackage *windowscamera* | Remove-AppxPackage"
:: Uninstall Groove Music
powershell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
:: Uninstall Movies & TV
powershell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage"
:: Uninstall OneNote
powershell -Command "Get-AppxPackage *onenote* | Remove-AppxPackage"
:: Uninstall People
powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
:: Uninstall Photos
powershell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
:: Uninstall Solitaire Collection
powershell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
:: Uninstall Sticky Notes
powershell -Command "Get-AppxPackage *stickynotes* | Remove-AppxPackage"
:: Uninstall Xbox app
powershell -Command "Get-AppxPackage *xboxapp* | Remove-AppxPackage"
:: Uninstall Xbox Game Bar
powershell -Command "Get-AppxPackage *gamingoverlay* | Remove-AppxPackage"
:: Uninstall Xbox Console Companion
powershell -Command "Get-AppxPackage *xbox* | Remove-AppxPackage"
:: Uninstall Paint 3D
powershell -Command "Get-AppxPackage *paint3d* | Remove-AppxPackage"
:: Uninstall Your Phone
powershell -Command "Get-AppxPackage *yourphone* | Remove-AppxPackage"
:: Uninstall Mixed Reality Portal
powershell -Command "Get-AppxPackage *holographic* | Remove-AppxPackage"

echo.
echo Successfully uninstalled press any key to continue!
pause
goto wd

:clnp
cls
:: Delete all log files in the current directory and its subdirectories
del /a /s /q *.log

:: Remove all files from the Windows temp directory
del /s /f /q C:\Windows\Temp\*.*

:: Clear the Prefetch folder
del /s /f /q C:\Windows\Prefetch\*

:: Clear the temporary files in the user's temp directory
del /s /f /q %temp%\*.*

:: Flush the DNS cache
ipconfig /flushdns

:: Stop Windows Update services
net stop wuauserv
net stop UsoSvc

:: Remove the SoftwareDistribution folder and recreate it
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution

:: Remove all files from the user's temp directory and recreate it
rd /s /q %temp%
mkdir %temp%

:: Take ownership of the temp directories
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y

:: Remove the Windows Temp directory and recreate it
rd /s /q C:\Windows\Temp
mkdir C:\Windows\Temp

:: Take ownership of the Windows Temp directory again
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y

:: Delete temporary files and folders using the deltree command
deltree /y C:\Windows\Temp\*
deltree /y C:\Windows\Temp
deltree /y C:\Windows\Tmp
deltree /y C:\Windows\FF*.tmp
deltree /y C:\Windows\History
deltree /y C:\Windows\Cookies
deltree /y C:\Windows\Recent
deltree /y C:\Windows\Spool\Printers
cls
echo.
echo Cleaned All Temp Files
echo ======================
echo.  
pause
goto wd

:kbm
cls
echo.
echo            ██╗  ██╗██████╗ ███╗   ███╗    ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo            ██║ ██╔╝██╔══██╗████╗ ████║    ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo            █████╔╝ ██████╔╝██╔████╔██║       ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗
echo            ██╔═██╗ ██╔══██╗██║╚██╔╝██║       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo            ██║  ██╗██████╔╝██║ ╚═╝ ██║       ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo            ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝       ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo.                           [1] Keyboard Tweaks        [2] Mouse Tweaks   
echo.
echo.                           [3] Data queue size        [4] Usb Power Savings
echo.
echo.
echo.                                   Press "X" to go back to menu
set /p input=: 
if /i %input% == 1 goto kbt
if /i %input% == 2 goto mt
if /i %input% == 3 goto dq
if /i %input% == 4 goto usb
if /i %input% == X cls & goto menu

:kbt
cls
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f

Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
pause
goto kbm

:mt
cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f 
Reg.exe add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverHeight" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverWidth" /t REG_SZ /d "4" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
pause
goto kbm

:usb
cls
echo Disabling USB PowerSavings
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f 
)

echo Thread Priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f

echo Disabling USB Selective Suspend
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f 
pause
goto kbm

:dq
cls
echo.
echo.
echo.
echo.                           ██████╗  █████╗ ████████╗ █████╗    ██████╗ ██╗   ██╗███████╗██╗   ██╗███████╗  
echo.                           ██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗  ██╔═══██╗██║   ██║██╔════╝██║   ██║██╔════╝  
echo.                           ██║  ██║███████║   ██║   ███████║  ██║██╗██║██║   ██║█████╗  ██║   ██║█████╗    
echo.                           ██║  ██║██╔══██║   ██║   ██╔══██║  ╚██████╔╝██║   ██║██╔══╝  ██║   ██║██╔══╝    
echo.                           ██████╔╝██║  ██║   ██║   ██║  ██║   ╚═██╔═╝ ╚██████╔╝███████╗╚██████╔╝███████╗  
echo.                           ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝     ╚═╝    ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝  
echo.
echo.
echo.                          [1] 13 (High end CPU)          [2] 18 (Mid end CPU)        [3] 22 (Low end CPU)                 
echo.  
echo.
echo.                                              Press "X" to go back to KBM Tweaks
echo.
set /p input=: 
if /i %input% == 1 goto high
if /i %input% == 2 goto mid
if /i %input% == 3 goto low
if /i %input% == X cls & goto kbm

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2 
goto Redirectmouse

:Redirectmouse
cls
goto dq

:high
echo 13 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "19" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "19" /f
echo.
echo.      Press any key to continue...
pause > nul
cls
goto dq

:mid
echo 18
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "24" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "24" /f
echo.   Press any key to continue...
pause > nul
cls
goto dq


:low
echo 22
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "34" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "34" /f
echo.
echo.   Press any key to continue...
pause > nul
cls
goto dq

:pt
cls
echo.
echo.
echo.                    ██████╗  ██████╗ ██╗    ██╗███████╗██████╗     ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo.                    ██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔══██╗    ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo.                    ██████╔╝██║   ██║██║ █╗ ██║█████╗  ██████╔╝       ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗
echo.                    ██╔═══╝ ██║   ██║██║███╗██║██╔══╝  ██╔══██╗       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo.                    ██║     ╚██████╔╝╚███╔███╔╝███████╗██║  ██║       ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo.                    ╚═╝      ╚═════╝  ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝       ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo.                                                   [A] Apply Power Tweaks
echo.
echo.                                                 Press "X" to go back to menu   
set /p input=:
if /i %input% == A goto pwrtwk
if /i %input% == X cls & goto menu

) ELSE (
echo Invalid Input & goto MisspellRedirect

:MisspellRedirect
cls
echo Misspell Detected
timeout 2
goto RedirectMenu


:RedirectMenu
cls
goto pt

:res
cls

set "DEST=C:\teqzzfree"
set "ZIP=%DEST%\eofreeres.zip"
set "TMP=%DEST%\eofreeres-main"

echo Creating folder: %DEST%
mkdir "%DEST%" >nul 2>&1

echo.
echo Downloading ZIP...
curl -L -o "%ZIP%" https://github.com/EOservices/eofreeres/archive/refs/heads/main.zip

if exist "%ZIP%" (
    echo.
    echo Extracting to temp folder...
    powershell -Command "Expand-Archive -Force '%ZIP%' '%DEST%'"

    echo.
    echo Moving files...
    move "%TMP%\*" "%DEST%" >nul 2>&1
    rmdir /s /q "%TMP%"
    del "%ZIP%"

    echo.
    echo Done
) else (
    echo  Download failed. Check your internet connection or GitHub link.
)

pause
cls
goto menu

:pwrtwk
cls
powercfg -import "C:\teqzzfree\teqzzpln.pow" >nul
powercfg.cpl  
echo.
echo.                                                 Press any key to continue...
pause > nul

echo Disabling CoalescingTimerInterval
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f 
powercfg /h off
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f 
pause
goto menu

:wt
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "2000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "2000" /f
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\SOFTWARE\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "StartupBoostEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BackgroundModeEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "UseDpiScaling" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Multimedia\Audio" /v "User DuckingPreference" /t REG_DWORD /d "3" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\BootAnimation" /v "DisableStartupSound" /t REG_DWORD /d "1" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ctfmon" /t REG_SZ /d "C:\Windows\System32\ctfmon.exe" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\VideoSettings" /v "VideoQualityOnBattery" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Control Panel\Desktop" /v "User PreferencesMask" /t REG_EXPAND_SZ /d "ነ考" /f
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Policies\Microsoft\Windows\safer\codeidentifiers" /v "authenticodeenabled" /t REG_DWORD /d "0" /f 
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f 
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
reg add "HKU\S-1-5-20\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUser Activities" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUser Activities" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUser Disabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f
echo.
echo.   Press any key to continue...
echo.
pause >nul
goto menu 

:patch
cls
powershell -Command "Write-Host 'Updated KBM tweaks.' -ForegroundColor Red -BackgroundColor Black"
powershell -Command "Write-Host 'Updated Windows Tweaks.' -ForegroundColor Red -BackgroundColor Black"
powershell -Command "Write-Host 'Updated Game Priority Tweaks.' -ForegroundColor Red -BackgroundColor Black"
powershell -Command "Write-Host 'Added Network Tweaks.' -ForegroundColor Red -BackgroundColor Black"
powershell -Command "Write-Host 'Updated Power Plan.' -ForegroundColor Red -BackgroundColor Black"
powershell -Command "Write-Host 'Changed Layout.' -ForegroundColor Red -BackgroundColor Black"
powershell -Command "Write-Host 'Added Socials.' -ForegroundColor Red -BackgroundColor Black"
pause
goto menu

:cpu
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v "Attributes" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "DCSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\2a737441-1930-4402-8d77-b2bebba308a3\d4e98f31-5ffe-4ce1-be31-1b38b384c009\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\DefaultPowerSchemeValues\381b4222-f694-41f0-9685-ff5bb260df2e" /v "DCSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ACSettingIndex" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "AllowPepPerfStates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "516198" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Misc" /v "DeviceIdlePolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\PowerCfg\GlobalPowerPolicy" /v "Policies" /t REG_BINARY /d "01000000020000000100000000000000020000000000000000000000000000002c0100003232030304000000040000000000000000000000840300002c01000000000000840300000001646464640000" /f
Reg.exe add "HKCU\Control Panel\PowerCfg\GlobalPowerPolicy" /v "Policies" /t REG_BINARY /d "01000000020000000100000000000000020000000000000000000000000000002c0100003232030304000000040000000000000000000000840300002c01000000000000840300000001646464640000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "516198" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
pause
goto menu

:network

chcp 65001 >nul 2>&1
cls
echo.
echo.
echo.       ███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo.       ████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo.       ██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝        ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗
echo.       ██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗        ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo.       ██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗       ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo.       ╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝       ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo                                             *WARNING ETHERNET ONLY*
echo.
echo.
echo                                             [1] General Net Tweaks
echo.
echo                                             [2] Adapter Settings    
echo.
echo                                             [3] Disable Limiting
echo.
echo                                             [4] Registry Settings
echo.
echo.
echo.                                      Press "X" to go back to menu
set /p choice=":"
if "%choice%"=="1" goto gnt
if "%choice%"=="2" goto ncpa
if "%choice%"=="3" goto limiting
if "%choice%"=="4" goto registry
if "%choice%"=="X" goto Menu
goto menu

:ncpa
cls
ncpa.cpl
start C:\ExtremeOptimizationfree\Neta.txt
pause
goto network

:limiting
echo.
netsh advfirewall firewall add rule name="StopThrottling" dir=in action=block remoteip=173.194.55.0/24,206.111.0.0/16 enable=yes
netsh interface tcp set heuristics disabled
echo Successfully Disabled Limiting
echo Press any key to continue...     
echo.
pause >nul
cls
goto network

:registry
echo.
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_SZ /d "ffffffff" /f
echo Successfully Applied Registry Changes
echo Press any key to continue...     
echo.
pause >nul
cls
goto network

:gnt
cls
netsh interface teredo set state disabled
netsh interface 6to4 set state disabled
netsh winsock reset
netsh int isatap set state disable
netsh int ip set global taskoffload=disabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=disable
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh int ip set global icmpredirects=disabled
netsh int tcp set security mpp=disabled profiles=disabled
netsh int ip set global multicastforwarding=disabled
PowerShell Disable-NetAdapterLso -Name "*"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}"
echo.
echo.  Press Any Key to Continue...
echo.
echo.  
pause
cls
goto network





























































































































Made By teqzz