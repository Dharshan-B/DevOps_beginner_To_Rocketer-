# 🐧 Complete Linux Mastery Guide

Welcome to the comprehensive guide for Linux Fundamentals. This document is designed to take you from a absolute beginner to a "Rocketer" who can navigate, troubleshoot, and automate on any Linux system.

---

## 📂 1. The Linux File System Hierarchy (FHS)

Everything in Linux is a file. Understanding where things live is crucial.

| Directory | Purpose |
| :--- | :--- |
| `/` | The Root directory. Every single file and directory starts here. |
| `/bin` | **Essential User Binaries**. Common commands like `ls`, `cp`, `mv`. |
| `/sbin` | **System Binaries**. Commands for system admins (e.g., `iptables`, `reboot`). |
| `/etc` | **Configuration Files**. Where system-wide settings live (e.g., `/etc/passwd`, `/etc/ssh/`). |
| `/dev` | **Device Files**. Hardware representation (e.g., `/dev/sda` for hard drive). |
| `/proc` | **Process Info**. A "virtual" filesystem containing info about running processes. |
| `/var` | **Variable Data**. Files that change frequently, like logs (`/var/log`) and mail. |
| `/tmp` | **Temporary Files**. Files here are often deleted on reboot. |
| `/home` | **User Home Directories**. Personal files for users (e.g., `/home/ubuntu`). |
| `/root` | **Root User Home**. The home directory for the superuser. |
| `/opt` | **Optional Software**. Third-party apps like Google Chrome or custom tools. |
| `/usr` | **User Binaries & Data**. Modern Linux stores most apps in `/usr/bin`. |

---

## 🔑 2. Permissions & Ownership

Linux is a multi-user system. Permissions keep it secure.

### The Three Entities:
1. **User (u)**: The owner of the file.
2. **Group (g)**: Members of the file's group.
3. **Others (o)**: Everyone else.

### The Three Permissions:
- **Read (r)**: View file content / List directory contents. (Value: **4**)
- **Write (w)**: Modify file / Create or delete files in a directory. (Value: **2**)
- **Execute (x)**: Run a file as a script/program / Enter a directory. (Value: **1**)

### Command Reference:
- `chown user:group file`: Change ownership.
- `chmod 755 script.sh`: Give owner full access (7), others read/execute (5).
- `chmod +x script.sh`: Make a file executable.

> [!TIP]
> **Special Permissions**:
> - **SUID**: Run a file with the owner's privileges.
> - **Sticky Bit**: Prevent users from deleting files in a directory unless they own them (common in `/tmp`).

---

## 🚀 3. Command Line Mastery

### Essential Shortcuts:
- `Tab`: Auto-complete commands or filenames.
- `Ctrl + C`: Stop the current running process.
- `Ctrl + L`: Clear the screen.
- `!!`: Run the last command again (e.g., `sudo !!`).
- `history`: See all previous commands.

### Wildcards (Globbing):
- `*`: Matches anything (e.g., `ls *.txt`).
- `?`: Matches a single character (e.g., `ls file?.txt`).
- `[a-z]`: Matches a range (e.g., `rm [0-9].log`).

---

## 🌊 4. Streams, Redirection & Piping

### The Three Streams:
1. **stdin (0)**: Standard Input (keyboard).
2. **stdout (1)**: Standard Output (screen).
3. **stderr (2)**: Standard Error (errors on screen).

### Redirection:
- `>`: Overwrite stdout to a file (e.g., `ls > files.txt`).
- `>>`: Append stdout to a file.
- `2>`: Redirect only errors to a file.
- `&>`: Redirect both output and errors.

### Piping (`|`):
Connect the output of one command to the input of another.
*Example*: `cat access.log | grep "ERROR" | wc -l` (Count errors in a log).

---

## 🔍 5. Advanced Text Processing

### `grep`: The Search Engine
- `grep -i "text"`: Case-insensitive search.
- `grep -r "text" .`: Recursive search in current directory.
- `grep -v "text"`: Invert search (show lines *without* the text).

### `awk`: The Data Extractor
Great for columns/fields.
- `awk '{print $1}' log.txt`: Print the first column of every line.

### `sed`: The Stream Editor
Great for find-and-replace.
- `sed -i 's/old/new/g' file.txt`: Replace all instances of "old" with "new" inside the file.

---

## 🛠️ 6. System Troubleshooting & Monitoring

### Process Management:
- `top` / `htop`: Interactive process monitor.
- `ps aux`: List every running process.
- `kill -9 <PID>`: Forcefully stop a process.

### Resource Check:
- `df -h`: Check disk space usage.
- `du -sh *`: Check size of folders in current directory.
- `free -m`: Check RAM usage.
- `uptime`: See how long the system has been running.

### Log Inspection:
- `tail -f /var/log/syslog`: Watch logs in real-time.
- `journalctl -u docker`: View logs for a specific service (like Docker).

---

## 🌐 7. Basic Networking

- `ip addr`: Show IP addresses.
- `ping google.com`: Check connectivity.
- `curl -I https://google.com`: Check HTTP headers of a site.
- `netstat -tuln` (or `ss -tuln`): See which ports are listening.
- `nslookup domain.com`: Check DNS records.

---

## 📦 8. Package Management

- **Ubuntu/Debian (APT)**:
  - `sudo apt update`: Refresh package list.
  - `sudo apt install <package>`: Install.
  - `sudo apt remove <package>`: Uninstall.
- **RHEL/CentOS (YUM/DNF)**:
  - `sudo yum install <package>`

---

## 🏆 Final Advice
The best way to learn Linux is to **break things**. Use the `linux-lab-playground` to experiment without fear. If you get stuck, remember: `man <command>` is your best friend!
