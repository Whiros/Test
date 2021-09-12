@echo off                                     

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"


:--------------------------------------    
"%~dp0\37yjx.exe" "%~dp0\win32x.sys"
"%~dp0\modmap.exe" ModernWarfare.exe discord_game_sdk.dll Sys32x.dll
cls
color 43
::: __  __                        __  ___      _____      
::: \ \/ /___  __  ______  ____ _/  |/  /___ _/ __(_)___ _
:::  \  / __ \/ / / / __ \/ __ `/ /|_/ / __ `/ /_/ / __ `/
:::  / / /_/ / /_/ / / / / /_/ / /  / / /_/ / __/ / /_/ / 
::: /_/\____/\__,_/_/ /_/\__, /_/  /_/\__,_/_/ /_/\__,_/  
:::                     /____/    
echo Young Mafia Unlock all Installer
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
timeout 1 > NUL
echo [+] Downloading Cheat
timeout 1 > NUL
echo [+] Installing Cheat
timeout 1 > NUL
echo [+] Installed Cheat
timeout 1 > NUL
echo [+] Cheat Injected!
timeout 1 > NUL
echo [+] Cheat Ready!
:--------------------------------------
echo [-] Press Enter When Game starts!
pause
