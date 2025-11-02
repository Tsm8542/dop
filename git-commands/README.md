# 1. Setting up identity for commits
```
# Syntax:
git config --global user.name "Name"

# Example:
git config --global user.name "Umar1266"
```

```
# Syntax:
git config --global user.email "Email"

# Example:
git config --global user.email "ansariumar12355@gmail.com"
```

# 2. List & verify that the identity is set
```
# Syntax:
git config --global --list
```

# 3. Setting the color UI to auto (to colorize output)
```
# Syntax:
git config --global color.ui auto
```

# 4. Initialize current directory as a Git repository
```
# Syntax:
git init
```

# 5. Cloning a repository
```
# Syntax:
git clone <github_repo_url>

# Example:
git clone https://github.com/Tsm8542/search.github.io.git
```

# 6. View tracked/untracked changes
```
# Syntax:
git status
```

# 7. Stage files for commit
```
# Syntax:
git add <filenames>

# Example:
git add .
```

# 8. Commit staged changes locally
```
# Syntax:
git commit -m "<message>"

# Example:
git commit -m "Initial commit"
```

# 9. Show commit history
```
# Syntax:
git log
```

# 10. Condensed visual history
```
# Syntax:
git log --online --graph
```

# 11. Show changes not yet staged
```
# Syntax:
git diff
```

# 12. List branches
```
# Syntax:
git branch
```

# 13. Create and switch to new branch
```
# Syntax:
git checkout -b <new_branch>

# Example:
git checkout -b light_mode
```

# 14. Switch branch
```
# Syntax:
git checkout <existing_branch>

# Example:
git checkout main
```

# 15. Delete a merged branch
```
# Syntax:
git branch -d branch

# Example:
git branch -d light_mode
```

# 16. Merge into current branch
```
# Syntax:
git merge <feature_branch>

# Example:
git merge main
```

# 17. Link to remote repository
```
# Syntax:
git remote add origin <remote_repo_url>

# Example:
git remote add origin https://github.com/Tsm8542/search.github.io.git
```

# 18. Download latest branches
```
# Syntax:
git fetch origin
```

# 19. Fetch & merge remote changes
```
# Syntax:
git pull origin main
```

# 20. Upload local commits to remote
```
# Syntax:
git push origin main
```