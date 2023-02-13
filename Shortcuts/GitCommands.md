# Very Important Git Commands

1. git commit --amend => Update the last commit, this must be done before you push it to the remote branch.
2. git reset --hard \<SHA> => Reset your branch to the typed hash.
3. git push --force (optional) => Reset everything on remote branch with the information of your local branch. ***Warning:*** don't use in shared branches as you will overwrite other user's progress.
4. git rebase -i \<SHA you want to squash to> => Squash commits into one.
5. git push origin +HEAD^:\<name of your branch> => discard last pushed commit on remote repository
6. git push origin \<SHA>:\<name of your branch> => discard all pushed commits on remote repository after \<SHA> reference
7. git reset HEAD^ => remove last local commit and keep changes
8. git reset \<SHA> => remove all local commits after \<SHA> reference and keep all changes
9. git stash => stashes the uncommitted changes (staged and unstaged files)
10. git stash -u => stash untracked files
11. git stash -a => stash untracked files and ignored files
12. git stash -p => stash specific files
13. git stash list => list all stashes
14. git stash save <description> => add a description to the stash
15. git stash apply => reapply last stashed changes (that is, stash@{0})
16. git stash pop => also reapply last stashed changes (that is, stash@{0})
17. git stash apply stash@{N} => reapply stash number N
18. git stash clear => empties the stash list by removing all the stashes
19. git stash drop <stash_id> => deletes a particular stash from the stash list
20. git stash branch <name of your branch> => applies stash to a new branch
