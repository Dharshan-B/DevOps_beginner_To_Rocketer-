# 🚀 Rocketer Challenges: Linux Mastery

So you've mastered the basics? Let's see if you can handle these real-world DevOps scenarios. These missions require chaining commands and using advanced logic.

## 📁 Environment
- **Location**: `01-linux-fundamentals/linux-lab-playground/`
- **Setup**: Make sure you have run `bash exercises/lab_setup.sh` recently to generate the advanced files.

---

### 🌊 Mission 6: The Log Filter (Piping & Redirection)
A web application is spitting out a messy log file at `logs/web_app.log`. You need to find all "ERROR" entries and save them to a new file named `errors_only.txt`.
- **Task**: Filter the log and save the output.
- **Goal**: `errors_only.txt` should exist and contain only the lines with the word "ERROR".
- **Hint**: `grep "ERROR" logs/web_app.log > errors_only.txt`

### 📊 Mission 7: The Disk Doctor (Disk Space)
You've been told the `projects` directory is taking up too much space. You need to find which file is the biggest.
- **Task**: List all files in `projects/` sorted by size.
- **Goal**: Identify the largest file.
- **Hint**: `du -ah projects/ | sort -h`

### 🧹 Mission 8: The Cleanup Crew (Find & Delete)
There are several temporary files with the extension `.tmp` scattered in the playground. You need to find them all and delete them in one go.
- **Task**: Find and remove all `.tmp` files.
- **Goal**: No `.tmp` files should remain in the playground.
- **Hint**: `find . -name "*.tmp" -type f -delete`

### 🕵️ Mission 9: The IP Detective (Networking)
You need to verify if your system can talk to the outside world and check its local IP.
- **Task**: Check your local IP address and ping `8.8.8.8`.
- **Goal**: Confirm connectivity.
- **Hint**: `ip addr` or `hostname -I`, then `ping -c 3 8.8.8.8`

---

## 🏆 Final Validation
Once you've completed these missions, go back to the `01-linux-fundamentals` folder and run the verification script:
```bash
cd ..
bash exercises/verify_lab.sh
```
*(The script will now check both the basic missions and these advanced Rocketer missions!)*
