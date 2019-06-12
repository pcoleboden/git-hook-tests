@echo OFF

SET HOOKDIR="%USERPROFILE%\.githooks"

REM Make the directory to store the hooks scripts - C:\Users\<username>\.githooks
mkdir "%HOOKDIR%"

REM Configure Git to use the new directory as its global source of hooks
git config --global core.hooksPath '~/.githooks'

REM Create a git alias to copy the ini file to the repo directory
git config --global alias.jirahook "!mkdir 'git-hooks' | cp ~/.githooks/jira-validation.ini git-hooks"

REM Copy the scripts to the global hook directory
copy "hook-scripts\*" "%HOOKDIR%"

pause