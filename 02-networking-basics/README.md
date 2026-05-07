# 02 - Networking Basics

Understanding how computers talk to each other is crucial for troubleshooting deployments and configuring cloud infrastructure.

## 📖 Key Concepts

### 1. The OSI Model (Simplified)
- **Layer 7 (Application)**: HTTP, DNS, FTP.
- **Layer 4 (Transport)**: TCP (reliable), UDP (fast).
- **Layer 3 (Network)**: IP addresses, Routing.

### 2. IP Addresses & Subnets
- **Public vs. Private IP**: Public IPs are on the internet; Private IPs are for internal networks (e.g., `192.168.x.x`).
- **CIDR Notation**: `10.0.0.0/24` defines a range of IP addresses.

### 3. DNS (Domain Name System)
The "Phonebook of the Internet" – maps domain names (e.g., `google.com`) to IP addresses.

### 4. Load Balancers
Distributes incoming traffic across multiple servers to ensure high availability.

## 🛠️ Essential Tools
- `ping`: Check connectivity to a host.
- `nslookup` / `dig`: Query DNS records.
- `curl -I`: View HTTP response headers from a URL.
- `netstat` / `ss`: View open ports and connections.
- `telnet` / `nc` (Netcat): Check if a specific port is open.

## 📝 Exercises: Network Detective
1. **Connectivity**: Ping `8.8.8.8` (Google DNS). Does it respond?
2. **DNS Lookup**: Use `nslookup` to find the IP address of `github.com`.
3. **HTTP Header**: Use `curl -I https://www.google.com` and identify the Server header.
4. **Local Ports**: Run a command to see which ports are currently listening on your machine.
5. **Port Check**: Try to connect to a website on port 80 using `telnet` or `nc` (e.g., `nc -zv google.com 80`).

---
*Next Step: [03 - Scripting & Automation](../03-scripting-and-automation)*
