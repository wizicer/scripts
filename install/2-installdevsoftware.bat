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

choco install python2 -y
choco install putty.portable -y
choco install autohotkey.portable -y
choco install tightvnc -y
choco install treesizefree -y
rem choco install unlocker -y

choco install sysinternals -y
choco install winscp.install -y
choco install ilspy -y
choco install snoop -y
choco install torgoisegit -y

choco install pandoc -y
choco install imagemagick -y
choco install plantuml -y
choco install graphviz -y
choco install fiddler -y

