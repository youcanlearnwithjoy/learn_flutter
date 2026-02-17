/*
  Git commands that are used in the project.

" * `git clone <repository>`: Clones a repository into a new directory.
  * `git add <file>`: Adds a file to the staging area.
  * `git commit -m "<message>"`: Commits the staged changes with a message.
  * `git push`: Pushes the committed changes to a remote repository.
  * `git pull`: Fetches and merges changes from a remote repository.
  * `git status`: Shows the status of the working directory and staging area.
  * `git log`: Shows the commit history.
  * `git branch`: Lists all branches in the repository.
  * `git checkout <branch>`: Switches to a different branch.
  * `git merge <branch>`: Merges a branch into the current branch.  
  * `git stash`: Stashes the changes in the working directory.
  * `git stash pop`: Applies the stashed changes and removes them from the stash list.
  * `git remote add <name> <url>`: Adds a new remote repository.
  * `git remote -v`: Shows the remote repositories. 
  * `git fetch`: Fetches changes from a remote repository without merging them.
  * `git reset --hard <commit>`: Resets the current branch to a specific commit, discarding all changes.
  * `git revert <commit>`: Creates a new commit that undoes the changes made in a specific commit.
  * `git tag <tagname>`: Creates a new tag for the current commit.
  * `git diff`: Shows the differences between the working directory and the staging area.
  * `git diff --staged`: Shows the differences between the staging area and the last commit.
  * `git log --oneline`: Shows the commit history in a condensed format.
  * `git log --graph`: Shows the commit history as a graph.
  * `git log --author="<author>"`: Shows the commit history filtered by author.
  * `git log --since="<date>"`: Shows the commit history filtered by date.
  * `git log --grep="<message>"`: Shows the commit history filtered by commit message.
  * `git log --stat`: Shows the commit history with statistics about the changes made in each commit.
  * `git log --patch`: Shows the commit history with the actual changes made in each commit.
  * `git log --pretty=format:"%h - %an, %ar : %s"`: Shows the commit history in a custom format.
  * `git log --follow <file>`: Shows the commit history for a specific file, including renames.
  *  `git log --name-only`: Shows the commit history with the names of the files changed in each commit.
  *   `git log --name-status`: Shows the commit history with the names and status of the files changed in each commit.
  * `git log --reverse`: Shows the commit history in reverse order.
  * `git log --no-merges`: Shows the commit history without merge commits.
  * `git log --all`: Shows the commit history for all branches.
  * `git log --graph --oneline --all`: Shows the commit history as a graph in a condensed format for all branches.
  * `git log --since="2 weeks ago"`: Shows the commit history for the last two weeks.
  * `git log --until="yesterday"`: Shows the commit history until yesterday.
  * `git log --author="John Doe"`: Shows the commit history for commits made
  * `git log --grep="bug fix"`: Shows the commit history for commits with "bug fix" in the message.
  * `git log --stat --since="1 month ago"`: Shows the commit history with statistics for the last month.
  * `git log --patch --author="Jane Doe"`: Shows the commit history with changes for commits made by Jane Doe.
  * `git log --pretty=format:"%h - %an, %ar : %s" --since="1 year ago"`: Shows the commit history in a custom format for the last year.
  *   `git log --follow --name-only <file>`: Shows the commit history with file names for a specific file, including renames.
  * `git log --name-status --reverse`: Shows the commit history with file names and status in reverse order.
  *   `git log --no-merges --all`: Shows the commit history without merge commits for all branches.
  *   `git log --graph --oneline --all --since="1 month ago"`: Shows the commit history as a graph in a condensed format for all branches for the last month.
  * `git log --since="2 weeks ago" --until="1 week ago"`: Shows the commit history for the last two weeks until one week ago.
  *   `git log --author="John Doe" --grep="bug fix"`: Shows the commit history for commits made by John Doe with "bug fix" in the message.
  *   
  * git branch -d <branch>: Deletes a branch.
  * git branch -D <branch>: Force deletes a branch.
  * git branch -m <old_branch> <new_branch>: Renames a branch.
  * git branch --merged: Lists branches that have been merged into the current branch.
  * git branch --no-merged: Lists branches that have not been merged into the current
  * git branch -a: Lists all branches, including remote branches.
  * git branch -r: Lists remote branches.
  * git branch --contains <commit>: Lists branches that contain a specific commit.
  * git branch --sort=<key>: Sorts branches by a specific key (e.g., committerdate, authordate, etc.).
  * git branch --list <pattern>: Lists branches that match a specific pattern.
  * git branch --show-current: Shows the name of the current branch.  
  * git branch --set-upstream-to=<remote>/<branch>: Sets the upstream branch for the current branch.
  * git branch --unset-upstream: Unsets the upstream branch for the current branch.
  * git branch --edit-description: Edits the description of the current branch.
  * git branch --color: Shows branch names in color.
  * git branch --verbose: Shows more information about each branch, including the last commit.
  * git branch --abrev-commit: Shows abbreviated commit hashes in the branch list.
  * git branch --points-at <commit>: Lists branches that point to a specific commit.
  * git branch --contains <commit>: Lists branches that contain a specific commit.
  * git branch --merged <branch>: Lists branches that have been merged into a specific branch.
  * git branch --no-merged <branch>: Lists branches that have not been merged into a specific branch.
  * git branch --sort=-committerdate: Sorts branches by committer date in descending order.
  * git branch --sort=authordate: Sorts branches by author date in ascending order.
  * git branch --sort=-authordate: Sorts branches by author date in descending order.
  * git branch --sort=refname: Sorts branches by reference name in ascending order.
  * git branch --sort=-refname: Sorts branches by reference name in descending order.
  * git branch --list 'feature/*': Lists branches that match the pattern 'feature/*'.
  * git branch --list 'bugfix/*': Lists branches that match the pattern 'bugfix/*'.
  * git branch --list 'release/*':  Lists branches that match the pattern 'release/*'.
  * git branch --list 'hotfix/*': Lists branches that match the pattern 'hotfix/*'.
  * git branch --list 'experiment/*': Lists branches that match the pattern 'experiment/*'.
  * git branch --list 'test/*': Lists branches that match the pattern 'test/*'.
  * git branch --list 'docs/*': Lists branches that match the pattern 'docs/*'.
  * git branch --list 'refactor/*': Lists branches that match the pattern 'refactor/*'.
  * git branch --list 'feature/login': Lists branches that match the pattern 'feature/login'.
  * git branch --list 'bugfix/issue-123': Lists branches that match the pattern 'bugfix/issue-123'.
  * git branch --list 'release/v1.0': Lists branches that match the pattern 'release/v1.0'.
  * git branch --list 'hotfix/critical-bug': Lists branches that match the pattern 'hotfix/critical-bug'.
  * git branch --list 'experiment/new-feature': Lists branches that match the pattern 'experiment/new-feature'.
  * git branch --list 'test/unit-tests': Lists branches that match the pattern 'test/unit-tests'.
  * git branch --list 'docs/update-readme': Lists branches that match the pattern 'docs/update-readme'.
  * git branch --list 'refactor/code-cleanup': Lists branches that match the pattern 'refactor/code-cleanup'.   
  * git branch --show-current: Shows the name of the current branch.
  * git branch --set-upstream-to=origin/feature/login: Sets the upstream branch for the current branch to origin/feature/login.
  * git branch --unset-upstream: Unsets the upstream branch for the current branch.
  * git branch --edit-description: Edits the description of the current branch.
  * git branch --color: Shows branch names in color.
  * git branch --verbose: Shows more information about each branch, including the last commit.
  * git branch --abrev-commit: Shows abbreviated commit hashes in the branch list.
  * git branch --points-at <commit>: Lists branches that point to a specific commit.
  * git branch --contains <commit>: Lists branches that contain a specific commit.
  * git branch --merged <branch>: Lists branches that have been merged into a specific branch.
  * git branch --no-merged <branch>: Lists branches that have not been merged into a specific branch.
  * git branch --sort=-committerdate: Sorts branches by committer date in descending order.
  * git branch --sort=authordate: Sorts branches by author date in ascending order.
  * git branch --sort=-authordate: Sorts branches by author date in descending order.
  * git branch --sort=refname: Sorts branches by reference name in ascending order.
  * git branch --sort=-refname: Sorts branches by reference name in descending order.
  * git branch --list 'feature/*': Lists branches that match the pattern 'feature/*'.
  * git branch --list 'bugfix/*': Lists branches that match the pattern 'bugfix/*'.
  * git branch --list 'release/*':  Lists branches that match the pattern 'release/*'.
  * git branch --list 'hotfix/*': Lists branches that match the pattern 'hotfix/*'.
  * git branch --list 'experiment/*': Lists branches that match the pattern 'experiment/*'.
  * git branch --list 'test/*': Lists branches that match the pattern 'test/*'.
  * git branch --list 'docs/*': Lists branches that match the pattern 'docs/*'.
  * git branch --list 'refactor/*': Lists branches that match the pattern 'refactor/*'.
  * git branch --list 'feature/login': Lists branches that match the pattern 'feature/login'.
  * git branch --list 'bugfix/issue-123': Lists branches that match the pattern 'bugfix/issue-123'.
  * git branch --list 'release/v1.0': Lists branches that match the pattern 'release/v1.0'.
  * git branch --list 'hotfix/critical-bug': Lists branches that match the pattern 'hotfix/critical-bug'.
  * git branch --list 'experiment/new-feature': Lists branches that match the pattern 'experiment/new-feature'.
  * git branch --list 'test/unit-tests': Lists branches that match the pattern 'test/unit-tests'.
  * git branch --list 'docs/update-readme': Lists branches that match the pattern 'docs/update-readme'.
  * git branch --list 'refactor/code-cleanup': Lists branches that match the pattern 'refactor/code-cleanup'.

 */