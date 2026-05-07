# 10 - AWS Cloud

AWS (Amazon Web Services) is the world's most popular cloud provider. It offers hundreds of services, but you only need to master the core ones to be effective in DevOps.

## 📖 Key Concepts

### 1. Core Services
- **EC2 (Elastic Compute Cloud)**: Virtual servers.
- **S3 (Simple Storage Service)**: File storage (like a cloud hard drive).
- **RDS (Relational Database Service)**: Managed databases (SQL).
- **IAM (Identity & Access Management)**: Managing users and permissions.
- **VPC (Virtual Private Cloud)**: Your own private network in the cloud.

### 2. The Free Tier
AWS offers a "Free Tier" for 12 months. **Warning:** Always set up a "Billing Alarm" so you don't accidentally spend money!

### 3. Serverless (Lambda)
Running code without managing servers. You only pay for the time the code is running.

## 🛠️ Essential Tools
- **AWS CLI**: Control AWS from your terminal.
- **Boto3**: The Python library for AWS.

## 📝 Exercises: Cloud Architect
1. **Account Setup**: Create an AWS Free Tier account (requires a credit/debit card).
2. **Billing Alarm**: (IMPORTANT) Set an alarm to notify you if your bill exceeds $1.
3. **Launch an EC2**: Start a small `t2.micro` Linux instance. SSH into it from your computer.
4. **S3 Bucket**: Create a bucket, upload an image, and make it publicly accessible via a URL.
5. **Clean Up**: Stop and terminate your EC2 instance so you don't get charged!

---
*Next Step: [11 - DevSecOps](../11-devsecops)*
