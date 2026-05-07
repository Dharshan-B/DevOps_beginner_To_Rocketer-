# 08 - CI/CD Pipelines

CI/CD (Continuous Integration / Continuous Deployment) is the heart of DevOps. It automates the process of building, testing, and deploying code.

## 📖 Key Concepts

### 1. Continuous Integration (CI)
Automatically building and testing code every time a developer pushes to the repository.

### 2. Continuous Delivery (CD)
Ensuring the code is always in a "deployable" state. Deployment might still require a manual button click.

### 3. Continuous Deployment (CD)
Automatically deploying every change that passes the tests to production.

## 🛠️ Tools
- **GitHub Actions**: Modern, YAML-based, built directly into GitHub.
- **Jenkins**: The "old school" powerhouse. Highly customizable but requires server management.
- **GitLab CI**: Integrated into GitLab.

## 📝 Exercises: Pipeline Pilot
1. **GitHub Action**: Create a `.github/workflows/hello.yml` file that prints "Building my first DevOps project!" on every push.
2. **Linting**: Add a step to your GitHub Action to check your code for errors (using `pylint` for Python or `eslint` for JS).
3. **Docker Build**: Create a pipeline that builds a Docker image from your code and pushes it to Docker Hub.
4. **Secret Management**: Learn how to use "GitHub Secrets" to store your Docker Hub password safely.
5. **Jenkins (Optional)**: If you have a local server, install Jenkins and create a "Freestyle Project" that runs a bash command.

---
*Next Step: [09 - Monitoring & Logging](../09-monitoring-and-logging)*
