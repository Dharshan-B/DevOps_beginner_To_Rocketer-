# 🛠️ Git Pro Challenges

You already know how to `add`, `commit`, and `push`. Now let's learn how to work like a professional DevOps Engineer.

## 🚀 Mission 1: The Feature Branch
**Goal**: Learn to work without touching the `main` branch directly.
- **Task**:
    - Create a new branch named `feature-readme-update`.
    - Make a change to any file in that branch.
    - Switch back to `main` and see that the change is NOT there.
    - Merge your feature branch into `main`.

## 🚀 Mission 2: The Conflict Master
**Goal**: Resolve a merge conflict safely.
- **Task**:
    - Run the helper script: `bash exercises/setup_conflict.sh`.
    - This will create a conflict between two branches.
    - Try to merge them and use your editor to pick the "best" code.
    - Finish the merge and push the result.

## 🚀 Mission 3: The Automated Guard (Git Hooks)
**Goal**: Use a `pre-commit` hook to prevent bad code from being saved.
- **Task**:
    - Every Git repo has a `.git/hooks` folder.
    - Create a script that checks if a file contains the word "TODO".
    - If it does, the script should "fail" and prevent the commit!
    - *Hint*: Use the template in `exercises/pre-commit-template.sh`.

---

## ✅ Progress Check
Once you've resolved your first conflict and set up your first hook, you've reached "Git Pro" status!
