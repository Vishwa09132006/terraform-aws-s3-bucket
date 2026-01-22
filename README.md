# 🚀 Terraform AWS S3 Bucket Project

This project demonstrates how to create and manage an AWS S3 bucket using Terraform, including enabling versioning, validating state files, and securely structuring your Terraform configuration.

It is designed as a **portfolio-ready cloud engineering project** to help you strengthen your skills and resume.

---

## 📘 Project Architecture

The diagram below shows how Terraform interacts with AWS during this project:

![Project Diagram](assets/project-diagram.png)

---

## 🧰 Prerequisites

Before starting, make sure you have the following installed:

### Local Requirements
- Terraform (v1.0+ recommended)
- AWS CLI
- Git
- VS Code (or any code editor)

### AWS Requirements
- An AWS account
- An IAM user with the following permissions:
  - `AmazonS3FullAccess`
  - `IAMReadOnlyAccess`
  - `AmazonEC2ReadOnlyAccess`

### Authentication
Run this before using Terraform:

```bash
aws configure
Provide your AWS Access Key and Secret Key.

📂 Project Structure
terraform-s3-project/
│── main.tf
│── variables.tf       (optional)
│── outputs.tf         (optional)
│── assets/            (contains screenshots)
🛠️ Terraform Configuration (main.tf)
This is the file where your S3 bucket is defined.

(Add screenshot or code snippet of your main.tf here)

📦 Deploying the Infrastructure
1️⃣ Initialize Terraform

terraform init
2️⃣ Validate the configuration

terraform validate
3️⃣ Plan the infrastructure

terraform plan
4️⃣ Apply changes to AWS

terraform apply
(Add screenshot of a successful terraform apply here)

🗄️ Verifying Your S3 Bucket in AWS Console
After applying, go to:

AWS Console → S3
You should see your bucket created.

🔁 Bucket Versioning Enabled
This project demonstrates enabling versioning on your S3 bucket — useful for:

Security

Backups

Auditing

Preventing accidental file deletion

(Add screenshot showing versioning enabled here)

🌐 Pushing This Project to GitHub
Make sure your .gitignore contains:

.terraform/
terraform.tfstate
terraform.tfstate.backup
Then push normally:

git add .
git commit -m "Initial commit"
git push -u origin main
🧹 Never Commit These Files
File / Folder	Reason
.terraform/	Dependencies, >600MB size issues
terraform.tfstate	Contains sensitive account details
terraform.tfstate.backup	Same reason
.terraform.lock.hcl	Optional — safe to ignore
