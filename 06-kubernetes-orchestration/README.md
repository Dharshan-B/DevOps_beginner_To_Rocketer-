# 06 - Kubernetes (K8s)

If Docker is the shipping container, Kubernetes is the crane and the ship that manages thousands of them.

## 📖 Key Concepts

### 1. The Cluster
- **Control Plane**: The brain of K8s.
- **Worker Nodes**: Where the containers actually run.

### 2. Objects
- **Pod**: The smallest unit (contains one or more containers).
- **Deployment**: Manages replicas of Pods (Self-healing!).
- **Service**: Provides a stable IP/DNS for your Pods.
- **Namespace**: Virtual partitions within a cluster.

### 3. Architecture
- **Kubelet**: Agent running on each node.
- **Kube-proxy**: Network proxy.
- **kubectl**: The CLI tool to talk to the cluster.

## 🛠️ Essential Commands
- `kubectl get pods`: List all pods.
- `kubectl apply -f deployment.yaml`: Create/Update resources.
- `kubectl describe pod <name>`: Debugging information.
- `kubectl logs <name>`: See container logs.
- `kubectl port-forward <pod> 8080:80`: Local testing.

## 📝 Exercises: Cluster Commander
1. **Minikube/Kind**: Install a local Kubernetes cluster using Minikube or Kind.
2. **First Pod**: Create a YAML file for an Nginx pod and apply it.
3. **Scaling**: Create a Deployment with 3 replicas of Nginx. Delete one pod and watch K8s recreate it automatically!
4. **Service**: Create a Service to expose your Nginx deployment.
5. **Dashboard**: Enable the Kubernetes dashboard and explore the resources visually.

---
*Next Step: [07 - Infrastructure as Code](../07-infrastructure-as-code)*
