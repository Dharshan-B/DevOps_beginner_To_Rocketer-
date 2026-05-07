# 03 - Scripting and Automation

"Automate everything" is the DevOps mantra. If you have to do a task twice, write a script for it.

## 📖 Key Concepts

### 1. Bash Scripting (The Glue)
Bash is perfect for system administration tasks, installing packages, and manipulating files.
- **Shebang**: Always start with `#!/bin/bash`.
- **Variables**: `NAME="DevOps"`
- **Loops**: `for i in {1..5}; do echo $i; done`

### 2. Python (The Swiss Army Knife)
Python is better for complex logic, API interactions, and cloud automation (using libraries like `boto3`).

### 3. Cron Jobs
Scheduled tasks on Linux.
- Format: `* * * * * command_to_execute`
- (Minute, Hour, Day, Month, Day of Week)

## 🛠️ Essential Syntax (Bash)
```bash
#!/bin/bash
# Check if a directory exists
if [ -d "/tmp" ]; then
  echo "Temp exists"
else
  echo "Temp missing"
fi
```

## 📝 Exercises: The Automator
1. **Hello Script**: Create a script `greet.sh` that takes a name as an argument and prints "Hello [Name], welcome to DevOps!".
2. **Backup Script**: Write a script `backup.sh` that copies all files from a folder named `data` to a folder named `backup_[date]`.
3. **Looping**: Write a script that creates 10 empty files named `file1.txt`, `file2.txt`, etc.
4. **Python Check**: Write a simple Python script that checks if a specific website is up or down using the `requests` library.
5. **Cron**: Set up a cron job to run your `greet.sh` script every minute (you can check your system logs to see it working).

---
*Next Step: [04 - Git & GitHub](../04-git-and-github)*
