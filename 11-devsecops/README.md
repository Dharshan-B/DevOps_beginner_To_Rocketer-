# 11 - DevSecOps

Security should not be an afterthought. DevSecOps means "Shifting Left" – integrating security at every stage of the development cycle.

## 📖 Key Concepts

### 1. Shift Left
Identifying vulnerabilities early in the development process rather than at the end.

### 2. Secret Management
Never commit passwords! Use tools like:
- **HashiCorp Vault**
- **AWS Secrets Manager**
- **GitHub Secrets**

### 3. Scanning Types
- **SAST (Static Application Security Testing)**: Scanning your code for vulnerabilities.
- **DAST (Dynamic Application Security Testing)**: Scanning the running application for weaknesses.
- **SCA (Software Composition Analysis)**: Checking your dependencies (libraries) for known bugs.

## 🛠️ Tools
- **SonarQube**: For code quality and security.
- **Trivy**: Scans Docker images for vulnerabilities.
- **Snyk**: Scans code and dependencies.

## 📝 Exercises: Security Guard
1. **Secret Leak**: Create a dummy file with a fake API key. Use a tool like `trufflehog` or `gitleaks` to find it.
2. **Docker Scan**: Use `docker scan` or `trivy` to check an image (like `nginx`) for security holes.
3. **Snyk**: Connect your GitHub repo to Snyk and see if your dependencies have vulnerabilities.
4. **IAM Audit**: Review your AWS IAM users. Ensure no one has "Administrator" access unless absolutely necessary (Principle of Least Privilege).

---
*Next Step: [12 - Capstone Projects](../12-projects)*
