# 07 - Infrastructure as Code (IaC)

Stop clicking buttons in the UI! IaC allows you to manage and provision your infrastructure through code, making it versionable and repeatable.

## 📖 Key Concepts

### 1. Provisioning vs. Configuration Management
- **Terraform (Provisioning)**: Creates the infrastructure (Servers, Networks, Databases).
- **Ansible (Configuration)**: Configures the software inside the servers (Installing Nginx, Updating packages).

### 2. Terraform Basics
- **HCL (HashiCorp Configuration Language)**: The syntax used by Terraform.
- **State File**: A JSON file where Terraform tracks the current state of your infrastructure.
- **Plan**: Shows what changes will be made before applying them.

### 3. Ansible Basics
- **Playbooks**: YAML files containing a list of tasks.
- **Inventory**: A list of servers to manage.
- **Agentless**: Ansible uses SSH to talk to servers (no software needed on the server!).

## 🛠️ Essential Commands
**Terraform:**
- `terraform init`: Initialize the workspace.
- `terraform plan`: Preview changes.
- `terraform apply`: Create the infrastructure.
- `terraform destroy`: Tear everything down.

**Ansible:**
- `ansible-playbook -i inventory.ini site.yml`: Run a playbook.
- `ansible all -m ping`: Check if servers are reachable.

## 📝 Exercises: Code-to-Cloud
1. **Terraform Local**: Use the `local` provider to create a text file on your computer using Terraform code.
2. **Terraform Docker**: Use Terraform to start a Docker container.
3. **Ansible Playbook**: Write an Ansible playbook to install `git` and `htop` on a local or remote Linux machine.
4. **Variable Power**: Use variables in your Terraform code to define the name of your resources.
5. **Ansible Roles**: Organize your playbook into "Roles" for better structure.

---
*Next Step: [08 - CI/CD Pipelines](../08-cicd-pipelines)*
