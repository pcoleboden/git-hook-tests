

$HOOKDIR="$Env:USERPROFILE\.githooks"
$HOOKDIRBASH=$HOOKDIR.replace("C:\", "/c/").replace("\", "/")

$HOOKDIR
$HOOKDIRBASH

# Make the directory to store the hooks scripts - C:\Users\<username>\.githooks
mkdir "$HOOKDIR"

# Configure Git to use the new directory as its global source of hooks
git config --global core.hooksPath "$HOOKDIRBASH/"

# Create a git alias to copy the ini file to the repo directory
git config --global alias.jirahook "!mkdir 'git-hooks' | cp ~/.githooks/jira-validation.ini git-hooks"

# Copy the scripts to the global hook directory
Copy-Item "hook-scripts\*" "$HOOKDIR"

#git update-index --chmod +x $HOOKDIR/commit-msg

pause
