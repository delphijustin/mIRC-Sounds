@echo off
if "%2"=="WSL" run64.exe /HC wsl.exe -- /bin/bash ~/chatsounds.sh %1
if "%2"=="CYGWIN" goto cygwin
if "%2"=="WINE" Z:\bin\bash ~/chatsounds.sh %1
if "%1"=="" goto help
goto done
:cygwin
%SystemDrive%
set cygwinDir=
if exist \cygwin64.new\cygwin.bat set cygwinDir=\Cygwin64.new\bin
if "%CYGWINDIR%"=="" if exist \cygwin64\cygwin.bat set cygwinDir=\Cygwin64\bin
if "%CYGWINDIR%"=="" if exist \cygwin\cygwin.bat set cygwinDir=\Cygwin\bin
cd %CYGWINDIR%
start /w mintty -w hide /home/%USERNAME%/chatsounds.sh %1
goto done
:help
echo Usage: %0 [EventName] [Platform]
echo [EventName]		The name of the event for the sound
echo [Platform]		The platform used to execute sox WSL,CYGWIN or WINE
:done
