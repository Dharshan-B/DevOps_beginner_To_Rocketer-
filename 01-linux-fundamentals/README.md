# 01 - Linux Fundamentals

Linux is the backbone of the internet. Most servers, containers, and cloud infrastructures run on Linux. To be a DevOps Engineer, you must be comfortable with the command line.

## 📖 Key Concepts

### 1. The Linux File System Hierarchy
- `/bin`: Essential user binaries (e.g., `ls`, `cp`).
- `/etc`: Configuration files.
- `/home`: User home directories.
- `/root`: Home directory for the root user.
- `/var`: Variable data (logs, databases).
- `/tmp`: Temporary files.

### 2. Permissions (The `chmod` command)
- `r` (read) = 4
- `w` (write) = 2
- `x` (execute) = 1
- Example: `chmod 755 file` (User: rwx, Group: r-x, Others: r-x)

### 3. Essential Commands
| Command | Action |
| :--- | :--- |
| `ls -la` | List all files with details |
| `cd` | Change directory |
| `pwd` | Print working directory |
| `mkdir` | Create a directory |
| `rm -rf` | Force remove (Use with caution!) |
| `grep` | Search text in files |
| `top` / `htop` | Monitor system processes |
| `ssh` | Secure shell into a remote server |

## 🛠️ Package Management
- **Ubuntu/Debian**: `sudo apt update && sudo apt install <package>`
- **CentOS/RHEL**: `sudo yum install <package>`

## 📝 Exercises: Linux Power User
1. **Navigating**: Go to your home directory, create a folder named `devops-lab`, and inside it create an empty file named `test.txt`.
2. **Text Editing**: Use `nano` or `vi` to write "Hello DevOps" inside `test.txt`.
3. **Permissions**: Change the permissions of `test.txt` so that only the owner can read and write it (No permissions for anyone else).
4. **Process Hunting**: Run a long-running command like `sleep 100 &`. Find its Process ID (PID) using `ps` and kill it using `kill <PID>`.
5. **Log Analysis**: View the last 10 lines of `/var/log/syslog` (or any log file you have access to).

---
*Next Step: [02 - Networking Basics](../02-networking-basics)*
