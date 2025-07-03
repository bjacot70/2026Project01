@echo off
:: This file is generated automatically before each use
::This batch file is called from ar000loader and will wait until the pid of ar000loader instance 
::currently running is removed from task list. Next all files from temporary folder identified 
::by 'SOURCE' will be copied to root direcory and the temporary folder is removed afterwards.
::Finally the script starts the ar000loader executable again.
SETLOCAL EnableDelayedExpansion
set SOURCE=.\SIM
call :waitforpid %1
%systemroot%\system32\robocopy %SOURCE% . /E
rd /S /Q %SOURCE%
start ar000loader.exe
:waitforpid
 tasklist /fi "pid eq %1" 2>nul | find "%1" >nul
 if %ERRORLEVEL%==0 (
   timeout /t 2 /nobreak >nul
   goto :waitforpid
 )
goto :eof
