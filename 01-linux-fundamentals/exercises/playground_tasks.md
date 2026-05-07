# 🎮 Linux Lab Playground: Missions

Welcome to your Linux sandbox! These missions are designed to test your ability to navigate, manipulate, and secure a Linux system.

## 📁 Environment Overview
- **Location**: `01-linux-fundamentals/linux-lab-playground/`
- **Goal**: Complete all 5 missions below using the terminal.

---

### 🕵️ Mission 1: The Hidden Secret
There is a file in this directory that doesn't show up with a normal `ls` command. 
- **Task**: Find the hidden file.
- **Goal**: Identify the name of the file starting with a dot (`.`).
- **Hint**: `ls -a`

### 🔒 Mission 2: The Locked Box
There is a file named `secrets.txt` that is currently "locked" (no one has permission to read it).
- **Task**: Try to read it with `cat secrets.txt`. When it fails, change the permissions so you can read it.
- **Goal**: Read the secret code inside the file.
- **Hint**: `chmod 644 secrets.txt`

### 📦 Mission 3: The Organizer
The directory structure is a bit messy. Let's clean it up.
- **Task**: Move the file `configs/app.conf` into the `backups` folder and rename it to `app.conf.backup`.
- **Goal**: The `configs` folder should be empty, and `backups` should contain the renamed file.
- **Hint**: `mv configs/app.conf backups/app.conf.backup`

### 🔎 Mission 4: The Log Hunter
Applications generate a lot of logs. You need to find a specific entry.
- **Task**: Search for the word "First" inside `logs/access.log`.
- **Goal**: See the line of text on your screen.
- **Hint**: `grep "First" logs/access.log`

### 💣 Mission 5: The Cleanup
You've finished your work and need to delete the development environment.
- **Task**: Delete the `projects` folder and everything inside it.
- **Goal**: The `projects` directory should no longer exist.
- **Hint**: `rm -rf projects`

---

## 🏆 Final Check
Once you finish these, go back up to the `01-linux-fundamentals` folder and run the verification script:
```bash
cd ..
bash exercises/verify_lab.sh
```
*(Note: The verify script checks your "Manual Tasks" from the main README!)*
