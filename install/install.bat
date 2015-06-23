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

powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

choco install git.install -y
choco install git-credential-winstore -y
choco install vim -y
choco install conemu -y
choco install python2 -y
choco install putty.portable -y
choco install autohotkey.portable -y
choco install foobar2000 -y
choco install treesizefree -y
choco install opera -y
choco install google-chrome-x64 -y
choco install everything -y
choco install linkshellextension -y
choco install nodejs.install -y
choco install wp-project-screen -y
choco install tightvnc -y
choco install 7zip.install -y
choco install winsplit -y

rem choco install clcl -y
rem choco install unlocker -y
rem choco install applocale -y

choco install sysinternals -y
choco install winscp.install -y
choco install ilspy -y
choco install snoop -y
choco install pandoc -y
choco install imagemagick -y
choco install plantuml -y
choco install graphviz -y
choco install fiddler -y
choco install torgoisegit -y

git clone https://github.com/wizicer/dotvim.git %USERPROFILE%\vimfiles
cd /d %USERPROFILE%\vimfiles
call install.bat

setx PATH "%PATH%;C:\Program Files (x86)\Git\bin;C:\Program Files (x86)\Vim\vim74"
