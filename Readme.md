# Setting up commit message validation #

Checking commit messages happens locally on your machine, not after it has been pushed to GitHub.

To set this up, you will need to do the following one-time per repository.

1. Run the batch file in this folder `setup.bat`. This will copy the hook scripts into the repository `.git` folder. Each developer will have to do this on their own machine, as the `.git` cannot be committed.
2. Edit the `git-hook.ini` file to set up the JIRA project prefix and configure the validation. Check the comments in the ini for information on each setting. This is committed to GitHub, so only needs to be set once when the repository is created, and committed.
