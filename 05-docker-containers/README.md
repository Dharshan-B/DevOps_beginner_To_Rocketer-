# 05 - Docker Containers

"It works on my machine!" – With Docker, it works everywhere. Docker packages an application and its dependencies into a "container" that can run on any Linux or Windows server.

## 📖 Key Concepts

### 1. Image vs. Container
- **Image**: A read-only template (like a class in programming).
- **Container**: A running instance of an image (like an object).

### 2. Dockerfile
A text file with instructions on how to build a Docker image.
```dockerfile
FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
```

### 3. Docker Compose
A tool for defining and running multi-container applications (e.g., App + Database).

## 🛠️ Essential Commands
- `docker build -t my-app .`: Build an image.
- `docker run -p 8080:80 my-app`: Run a container.
- `docker ps`: List running containers.
- `docker images`: List downloaded images.
- `docker exec -it <id> bash`: Get a shell inside a container.
- `docker-compose up -d`: Start multi-container apps in background.

## 📝 Exercises: Container Captain
1. **Hello Docker**: Run the `hello-world` image from Docker Hub.
2. **Web Server**: Run an `nginx` container and access it on your browser.
3. **Custom Image**: Create a simple `index.html` and a Dockerfile to serve it using Nginx. Build and run it.
4. **Volumes**: Run a container and map a local folder to it so that changes on your computer reflect inside the container.
5. **Docker Compose**: Create a `docker-compose.yml` file that starts an Nginx web server and a Redis database together.

---
*Next Step: [06 - Kubernetes](../06-kubernetes-orchestration)*
