@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

choco install git.install -y
choco install git-credential-winstore -y
choco install vim -y
choco install conemu -y
choco install opera -y
choco install everything -y
choco install linkshellextension -y
choco install nodejs.install -y
rem choco install wp-project-screen -y
choco install 7zip.install -y
rem choco install winsplit -y
rem choco install clcl -y
rem choco install applocale -y

git clone https://github.com/wizicer/dotvim.git %USERPROFILE%\vimfiles
cd /d %USERPROFILE%\vimfiles
call install.bat

setx PATH "%PATH%;C:\Program Files (x86)\Git\bin;C:\Program Files (x86)\Vim\vim74"
