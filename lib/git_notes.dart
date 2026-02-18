/**
 * Git Notes
 * https://git-scm.com/docs/git-notes
 * 
 * 
 */

/**
 * Initialize a new Git repository
 * 
 * git init (creates the local hidden Git folder)
 * git add . (Tells Git to track every file in the project)
 * git commit -m "Initial Commit message" (saves the current state)
 * CREATE A REMOTE: YOU MUST GO TO GITHUB, CREATE A NEW REPO, AND COPY THE URL
 * git remote add origin <URL> (Link it)
 * git push -u origin main (Push)
 */

/**
 * UPLOAD FLOW
 * git init (Local) -> Create Repo (Remote) -> git remote add (The bridge) -> git push (The upload))
 * 
 */

/**
 * Git diff: command to show the differences between commits, commit and working tree, etc.
 * git diff (shows unstaged changes)
 * git diff --staged (shows staged changes)
 */

/**
 * git reset lib/main.dart (unstage the file)
 * git reset --hard (unstage all files and discard changes)
 * git reset --soft HEAD~1 (unstage all files but keep changes)
 * 
 * creating a new branch:
 * git checkout -b feature/dark-mode (creates and switches to the new branch)
 * git checkout feature/dark-mode (switches to the existing branch)
 * git merge feature/dark-mode (merges the feature branch into the current branch)
 */

/**
 * Pushing new branch to remote:
 * git push -u origin feature/dark-mode (pushes the new branch and sets the upstream)
 * -u or --set-upstream: This option tells Git to remember the remote branch you are pushing to, so that in future you can simply use git push without specifying the remote and branch name.
 * git push origin feature/dark-mode (pushes the existing branch)
 */

/**
 * Deleting a branch:
 * git branch -d feature/dark-mode (deletes the local branch)
 * git push origin --delete feature/dark-mode (deletes the remote branch)
 * git branch -D feature/dark-mode (force deletes the local branch, even if it has unmerged changes)
 * git branch -m old-branch-name new-branch-name (renames a branch)
 * git branch -a (lists all branches, including remote branches)
 * git branch -r (lists only remote branches)
 * git branch (lists only local branches)
 * git checkout main (switches to the main branch)
 * git branch --merged (lists branches that have been merged into the current branch)
 * git branch --no-merged (lists branches that have not been merged into the current branch
 */

/**
 * The stash is a temporary storage area where you can save changes that you are not ready to commit yet. It allows you to switch branches or work on something else without losing your current changes.
 * git stash (saves your changes to the stash and reverts your working directory to match the HEAD commit)
 * git stash list (lists all stashed changes)
 * git stash apply (applies the most recent stashed changes to your working directory)
 * git stash apply stash@{2} (applies a specific stashed change)
 * git stash drop stash@{2} (deletes a specific stashed change)
 * git stash clear (deletes all stashed changes)
 * git stash pop (applies the most recent stashed changes and removes it from the stash)
 * git stash save "message" (saves your changes to the stash with a message)
 * git stash show (shows the changes in the most recent stash)
 * git stash show stash@{2} (shows the changes in a specific stash)
 * git stash branch new-branch-name (creates a new branch from the most recent stash and applies the stashed changes to it)
 * git stash branch new-branch-name stash@{2
 */

/**
 * git status (shows the current status of the working directory and staging area)
 * 
 */

/**
 * git checkout feature_branch (switches to the specified branch)
 * git rebase main (rebases the current branch onto the main branch, applying your commits on top of the latest commits from main)
 * git merge main (merges the main branch into the current branch, creating a new commit
 * git rebase -i HEAD~3 (interactive rebase to edit the last 3 commits)
 * git rebase --continue (continues the rebase process after resolving conflicts)
 * git rebase --abort (aborts the rebase process and returns to the original state)
 * git rebase --skip (skips the current commit and continues with the next one) 
 */

/**
 * An SSH(Secure Shell) key pair consists of a private key and a public key. 
 * The private key is kept on your local machine and should be kept secure, 
 * while the public key is added to your Git hosting service (like GitHub) 
 * to authenticate your identity when you push or pull changes.
 * To generate an SSH key pair, you can use the following command in your terminal:
 * ssh-keygen -t ed25519 -C "youcanlearnwithjoy@gmail.com" (press enter to accept the default file location, and optionally set a passphrase for added security)
 * Add it to macs keychain:
 * ssh-add --apple-use-keychain ~/.ssh/id_ed25519
 * Copy the public key to your clipboard:
 * pbcopy < ~/.ssh/id_ed25519.pub (for macOS)
 * Then, go to your Git hosting service (like GitHub), navigate to the SSH keys
 * section in your account settings, and add a new SSH key by pasting the contents 
 * of your public key.
 * Update the project:
 * git remote set-url origin git@github.com:youcanlearnwithjoy/git_notes.git (switches the remote URL to use SSH instead of HTTPS)
 * Check the remote URL:
 * git remote -v (verifies that the remote URL has been updated to use SSH).
 * If you see http:// or https:// in the remote URL, it means you are still using HTTPS. You need to switch to SSH to use the SSH key for authentication.
 * If you see git@github.com: in the remote URL, it means you are using SSH and your SSH key will be used for authentication when you push or pull changes.
 * Test the hand shake:
 * ssh -T git@github.com (tests the SSH connection to GitHub and verifies that your SSH key is working correctly)
 * Successful authentication will result in a message like "Hi username! You've successfully authenticated, but GitHub does not provide shell access."
 * If you encounter issues, make sure your SSH key is added to the ssh-agent and that the public key is correctly added to your Git hosting service. You can also check the permissions of your SSH key files to ensure they are secure (private key should have permissions 600)."
 */ 