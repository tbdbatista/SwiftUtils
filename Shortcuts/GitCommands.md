# Very Important Git Commands

1. git commit --amend => Update the last commit, this must be done before you push it to the remote branch.
2. git reset --hard "<SHA>" => Reset your branch to the typed hash.
3. git push --force (optional) => Reset everything on remote branch with the iunformation of your local branch. ***Warning:*** don't use in shared branches as you will overwrite other user's progress.
4. git rebase -i "<SHA you want to squash to>" => Squash commits into one.
5. git push origin +HEAD^:"<name of your branch>" => delete last pushed commit on remote repository
6. git reset HEAD^ => remove last local commit and keep the changes
