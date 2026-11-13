# Terraform Projects – AWS Infrastructure as Code

Welcome to my **Terraform Projects Repository**! 🚀

This repository contains my hands-on projects using **Terraform and AWS** to provision and manage cloud infrastructure through Infrastructure as Code (IaC).

I am building these projects to improve my practical knowledge of AWS Cloud, Terraform, and DevOps automation.

## 🛠️ Technologies Used

- **Terraform** – Infrastructure as Code (IaC)
- **AWS** – Amazon Web Services
- **Amazon VPC** – Virtual Private Cloud
- **EC2** – Elastic Compute Cloud
- **RDS** – Relational Database Service
- **Subnets** – Public and Private Subnets
- **Security Groups** – Network Security
- **Git & GitHub** – Version Control

## 📂 Project Structure

```text
Terraform_Project/
│
├── VPC/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   └── README.md
│
├── EC2/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   └── README.md
│
├── RDS/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   └── README.md
│
└── README.md
```

## 📌 Projects

### 1. AWS VPC Infrastructure using Terraform

- Create an AWS VPC.
- Configure public and private subnets.
- Configure availability zones.
- Create Internet Gateway.
- Configure Route Tables.
- Associate subnets with route tables.

### 2. AWS EC2 Instance using Terraform

- Provision EC2 instances.
- Configure AMI and instance type.
- Configure key pairs.
- Attach Security Groups.
- Manage infrastructure using Terraform.

### 3. AWS RDS Database using Terraform

- Provision Amazon RDS database.
- Configure database engine.
- Configure database instance class.
- Create DB Subnet Group.
- Configure Security Groups.
- Manage database infrastructure using Terraform.

## ⚙️ Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Format Terraform files:

```bash
terraform fmt
```

Preview infrastructure changes:

```bash
terraform plan
```

Create AWS infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

## 🔐 Security Best Practices

- Never upload AWS Access Keys or Secret Keys.
- Never upload passwords or sensitive credentials.
- Add `terraform.tfvars` to `.gitignore` if it contains secrets.
- Never upload Terraform state files (`*.tfstate`).
- Use IAM roles and environment variables for credentials.

## 🎯 Learning Objectives

- Understand Infrastructure as Code.
- Automate AWS infrastructure provisioning.
- Learn Terraform variables and outputs.
- Work with AWS networking and database services.
- Gain practical DevOps and Cloud Engineering experience.

## 👨‍💻 About Me

**Vikas Jagtap**  
Aspiring AWS & DevOps Engineer

- GitHub: https://github.com/vikasjagtap9696
- LinkedIn: https://www.linkedin.com/in/vikasjagtap9696/

I am continuously learning AWS, Terraform, Docker, Kubernetes, Jenkins, and CI/CD to build my career in Cloud and DevOps Engineering.

---

⭐ If you find this repository useful, feel free to explore and connect with me!

**Happy Learning & Keep Building! 🚀**
