@echo OFF

SET HOOKDIR="%USERPROFILE%\.githooks"

REM Make the directory to store the hooks scripts - C:\Users\<username>\.githooks
mkdir "%HOOKDIR%"

REM Configure Git to use the new directory as its global source of hooks
git config --global core.hooksPath '~/.githooks'

copy "hook-scripts\*" "%HOOKDIR%"

pause