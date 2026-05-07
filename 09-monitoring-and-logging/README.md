# 09 - Monitoring and Logging

If a server falls in the forest and no one is monitoring it, does it make a sound? Monitoring tells you if your system is healthy; Logging tells you *why* it's broken.

## 📖 Key Concepts

### 1. Monitoring (Prometheus & Grafana)
- **Prometheus**: Collects metrics (CPU usage, RAM, HTTP requests per second).
- **Grafana**: Visualizes these metrics in beautiful dashboards.

### 2. Logging (ELK / EFK Stack)
- **Elasticsearch**: A search engine for your logs.
- **Logstash / Fluentd**: Collects and processes logs.
- **Kibana**: The UI to search and visualize logs.

### 3. Alerting
Automatically sending a Slack message or Email when something breaks (e.g., CPU > 90%).

## 🛠️ Tools
- **Uptime Kuma**: A simple self-hosted tool to check if your websites are up.
- **Sentry**: For tracking application errors and stack traces.

## 📝 Exercises: The Watchman
1. **Uptime Check**: Run Uptime Kuma in a Docker container and set it up to monitor `google.com`.
2. **Prometheus**: Run Prometheus in Docker and explore its web UI.
3. **Grafana Dashboard**: Connect Grafana to Prometheus and create a graph showing your computer's RAM usage.
4. **Log Hunting**: Use `grep` and `tail` to find errors in your system logs (`/var/log`).
5. **Custom Metrics**: (Advanced) Write a small Python script that sends a "custom metric" to Prometheus.

---
*Next Step: [10 - AWS Cloud](../10-aws-cloud)*
