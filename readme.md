# 🧠 Linux System Health Check Script

This project provides a simple **Bash script (`healthcheck.sh`)** that monitors your system’s health and logs key information such as uptime, CPU load, memory usage, and disk usage. It also checks the status of critical services (like `nginx` and `ssh`) and logs everything into `healthlog.txt`.

---

## 📋 Features

✅ Displays current **date and time**  
✅ Shows **system uptime**  
✅ Logs **CPU load average**  
✅ Displays **memory and swap usage (in MB)**  
✅ Shows **disk usage** for all mounted filesystems  
✅ Lists **top 5 memory-consuming processes**  
✅ Checks if specific **services (nginx, ssh)** are running  
✅ Appends all results to `healthlog.txt` with a timestamp  

---

## ⚙️ Usage

### Step 1: Clone the repository
```bash
git clone https://github.com/<your-username>/healthcheck-script.git
cd healthcheck-script
