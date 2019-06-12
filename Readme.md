# Setting up commit message validation #

Checking commit messages happens locally on your machine, not after it has been pushed to GitHub.

To set this up, you will need to do the following:

1. Run the batch file in this folder `setup.bat`. This will:
   1. Create a folder called `.githooks` in your user directory (`C:\Users\<username>`) and copy the global hook scripts there.
   2. Configure git on your machine to use this new folder to find global hooks.
2. Each time you create a repository that requires commit checks:
    1. Open Git Bash and `cd` to the root of the repository (or right click the repository folder in Windows and choose `Git Bash Here`).
    2. Then run `git jirahook`. This will create a folder called `git-hooks` inside the repository, containing a file name `jira-validation.ini`.
    3. Edit `jira-validation.ini` to set up the JIRA project prefix and configure the validation. Check the comments in the ini for information on each setting.
    4. Commit the `jira-validation.ini` file to the GitHub repository, so it is set up for anyone who works on it.
