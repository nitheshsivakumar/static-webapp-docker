# 🌐 Static Web App - Hosted on AWS using Docker, ECR, and ECS

## 📌 Project Overview

This project involves deploying a **static web application** on **AWS** using **Docker containers**, **Amazon Elastic Container Registry (ECR)**, and **Amazon Elastic Container Service (ECS) with AWS Fargate**. The goal was to create a **scalable, cost-effective, and containerized** hosting solution.

## 🎯 Problem Statement

### Challenges in Hosting a Static Web App
- **Deployment Complexity**: Setting up and managing infrastructure.
- **Scalability**: Handling varying traffic loads efficiently.
- **Security**: Ensuring secure access to the application and infrastructure.
- **Containerization**: Efficiently packaging the application for portability and scalability.
- **Automated Deployment**: Reducing manual intervention with containerized CI/CD.

✅ **Solution Implemented:**  
This project leverages **Docker** for containerization, **ECR** for image storage, and **ECS with AWS Fargate** for serverless container orchestration.

---

## 🏗️ Architecture Overview

### 🔹 Key AWS Services Used
- **Amazon ECR** - Storing container images.
- **AWS Fargate** - Running containers without managing EC2 instances.
- **Amazon ECS** - Orchestrating containerized workloads.
- **Application Load Balancer** - Distributing traffic to containers.
- **VPC** - Custom networking with private and public subnets.
- **NAT Gateway** - Enabling internet access for private instances.
- **AWS Certificate Manager** - Securing web traffic with HTTPS.
- **Amazon Route 53** - Managing DNS records for domain resolution.
- **IAM** - Managing access control and permissions.

📌 **Reference Architecture:**  
![Architecture](1._Docker.jpg)

---

## 🚀 Deployment Steps

### 1️⃣ Prerequisites
- Install **Git**, **Visual Studio Code**, and **AWS CLI**.
- Create a **GitHub account** and set up **SSH keys**.
- Sign up for a **Docker Hub** account and install **Docker**.

### 2️⃣ Containerization & Image Storage
- Create a **GitHub repository** to store the Dockerfile.
- Clone the repository and create a **Dockerfile**.
- Build the **Docker container image**.
- Run and test the container locally.
- Push the image to **Docker Hub**.

### 3️⃣ Push Image to AWS ECR
- Create an **IAM User** with appropriate permissions.
- Create an **Amazon ECR repository**.
- Authenticate Docker with AWS and push the image to ECR.

### 4️⃣ Deploy to AWS ECS with Fargate
- Set up a **VPC** with public and private subnets.
- Create an **Application Load Balancer** for traffic distribution.
- Define **security groups** to restrict access.
- Create an **ECS cluster** using AWS Fargate.
- Define a **Task Definition** for the container.
- Deploy the container as an **ECS service**.

### 5️⃣ Configure DNS and Security
- Register a **domain** using **Amazon Route 53**.
- Set up an **SSL certificate** using **AWS Certificate Manager**.

---

## 🔧 How to Set Up Locally
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/static-webapp-aws.git
   cd static-webapp-aws
2. Build and run the Docker container:
docker build -t static-webapp .
docker run -p 8080:80 static-webapp

3. Push the image to AWS ECR:
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <your-ecr-url>
docker tag static-webapp:latest <your-ecr-url>:latest
docker push <your-ecr-url>:latest

4. Deploy to ECS via AWS Fargate.

📊 Key Benefits

✅ Fully Managed - No need to manage EC2 instances with AWS Fargate.
✅ Scalable - Automatically adjusts resources based on traffic.
✅ Secure - IAM roles, VPC security groups, and HTTPS encryption.
✅ Efficient Deployment - Docker images stored in ECR for easy updates.
✅ Optimized Costs - Pay only for running containers with Fargate.
