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

choco install git.install
choco install git-credential-winstore
choco install vim
choco install conemu
choco install python2
choco install putty.portable
choco install autohotkey.portable
choco install foobar2000
choco install treesizefree
choco install opera
choco install google-chrome-x64
choco install everything
choco install linkshellextension
choco install nodejs.install
choco install wp-project-screen
choco install tightvnc
choco install 7zip.install
choco install winsplit

rem choco install clcl
rem choco install unlocker
rem choco install applocale

choco install sysinternals
choco install winscp.install
choco install ilspy
choco install snoop
choco install pandoc
choco install imagemagick
choco install plantuml
choco install graphviz
choco install fiddler
choco install torgoisegit

npm i -g bower
npm i -g coffee-script
npm i -g yo
npm i -g nodemon
npm i -g gulp
npm i -g grunt-cli
npm i -g generator-gulp-angular
npm i -g npm-check-updates
npm i -g browser-sync
npm i -g cleaver
npm i -g hexo

