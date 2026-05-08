# 04 - Git and GitHub

Version control is the foundation of CI/CD. Without Git, you cannot have automated pipelines.

## 📖 Key Concepts

### 1. The Three States
- **Working Directory**: Where you edit files.
- **Staging Area (Index)**: Where you prepare files for a commit.
- **Repository**: Where Git stores the permanent snapshots.

### 2. Branching Strategies
- **Main/Master branch**: Stable production code.
- **Feature branches**: Where new work happens.
- **Pull Requests (PR)**: Asking to merge your feature branch into main.

### 3. Essential Commands
| Command | Action |
| :--- | :--- |
| `git init` | Start a new repo |
| `git status` | See what has changed |
| `git add .` | Stage all changes |
| `git commit -m "msg"` | Save a snapshot |
| `git push` | Send changes to GitHub |
| `git pull` | Get latest changes from GitHub |
| `git checkout -b <name>` | Create and switch to a new branch |
| `git merge <name>` | Merge a branch |

## 🛠️ GitHub Best Practices
- Use descriptive commit messages.
- Never commit secrets (passwords, API keys).
- Use `.gitignore`.

## 📝 Exercises: Git Master

### 🕹️ Professional Workflow (Recommended)
You know how to push code; now learn how to manage it like a pro.

1. **The Missions**: Open [exercises/git_pro_challenges.md](exercises/git_pro_challenges.md) for your 3 advanced tasks.
2. **Conflict Practice**: Run `bash exercises/setup_conflict.sh` and try to solve the mess!
3. **Automate Quality**: Use the template in `exercises/pre-commit-template.sh` to set up your first Git Hook.

### Manual Tasks
1. **Init**: Initialize a git repository in a new folder.
2. **Commit**: Create a file, add it to the staging area, and commit it.
3. **History**: Change the file and commit again. Use `git log` to see your history.
4. **Branching**: Create a branch called `fix-typo`, make a change, and merge it back to `main`.
5. **GitHub**: Create a repository on GitHub and push this entire `Devops_Beginner_to_Rocketer` folder to it!

---
*Next Step: [05 - Docker Containers](../05-docker-containers)*

----
