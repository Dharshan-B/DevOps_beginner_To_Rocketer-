# 🤖 Automation Challenges

It's time to build your first automation tools! Use your WSL terminal and a text editor (like `nano` or VS Code) to complete these challenges.

## 🚀 Challenge 1: The File Sorter Bot
**Goal**: Create a script named `sorter.sh` that organizes files by their extension.
- **Task**: 
    - Create 3 `.log` files and 3 `.txt` files in a temporary folder.
    - Your script should move all `.log` files to a folder named `logs/` and all `.txt` files to `docs/`.
    - If the folders don't exist, the script should create them!

## 🚀 Challenge 2: The Smart Greeter
**Goal**: Create a script named `greet_me.sh` that is "time-aware".
- **Task**:
    - The script should take your name as an argument (e.g., `bash greet_me.sh Dharshan`).
    - It should check the current hour (use `date +%H`).
    - If it's before 12 PM, print "Good Morning".
    - If it's between 12 PM and 6 PM, print "Good Afternoon".
    - Otherwise, print "Good Evening".

## 🚀 Challenge 3: The System Watchman
**Goal**: Create a script named `monitor.sh` that checks your system health.
- **Task**:
    - Use `df -h` to check the disk usage of your root (`/`) partition.
    - If the usage is above 80%, print a big **"WARNING: Disk Space Low!"**.
    - Otherwise, print "System healthy: [Usage]% used".

---

## ✅ Testing Your Bots
Once you've written your scripts, I've provided a `test_automation.sh` script in this folder. Run it to see if your bots pass the test!
```bash
bash exercises/test_automation.sh
```
