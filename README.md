# 🚀 Terraform AWS S3 Bucket Project

[![Terraform](https://img.shields.io/badge/Terraform-v1.0+-blue)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Cloud-orange)](https://aws.amazon.com/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

This project demonstrates how to create and manage an AWS S3 bucket using Terraform, including enabling versioning, validating state files, and securely structuring your Terraform configuration.

It is designed as a **portfolio-ready cloud engineering project** to help you strengthen your skills and resume.

---

## 📘 Project Architecture

![Architecture Diagram](assets/project-diagram.png)  


---

## 🧰 Prerequisites

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

```
aws configure
```

Provide your AWS Access Key and Secret Key.

### 📂 Project Structure

```
terraform-s3-project/
│── main.tf
│── variables.tf       (optional)
│── outputs.tf         (optional)
│── assets/            (contains screenshots)
```

🛠️ Terraform Configuration (main.tf)

This is the file where your S3 bucket is defined:

### Example main.tf
```
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
} 
```
(Add screenshot of your main.tf if desired in assets/ folder)

## 📦 Deploying the Infrastructure
### 1️⃣ Initialize Terraform

```
terraform init
```
### 2️⃣ Validate the configuration

```
terraform validate
```
### 3️⃣ Plan the infrastructure

```
terraform plan
```
### 4️⃣ Apply changes to AWS

```
terraform apply
```
## First Output: 
![](assets/terraform-apply.png)

## Second Output: 
![](assets/terraform-apply-results.png)

## 💣 Destroying the Infrastructure (Optional)

If you want to remove the S3 bucket and all Terraform-managed resources, run:

```
terraform destroy
```

![](assets/terraform-destroy1.png)

Terraform will show you a list of resources it plans to delete.
Type yes to confirm the destruction.

⚠️ Warning:
Destroying the S3 bucket will permanently delete:

All objects in the bucket
All versions (if versioning is enabled)

## 🗄️ Verifying Your S3 Bucket in AWS Console
After applying, go to:

AWS Console → S3
You should see your bucket created.

![](assets/s3-bucket-in-console.png)
## 🔁 Bucket Versioning Enabled
This project demonstrates enabling versioning on your S3 bucket — useful for:

Security

Backups

Auditing

Preventing accidental file deletion

(Add screenshot showing versioning enabled here)

### 🌐 Pushing This Project to GitHub
Make sure your .gitignore contains:

```
.terraform/
terraform.tfstate
terraform.tfstate.backup
```

Then push normally:
```
git add .
git commit -m "Initial commit"
git push -u origin main
```

### 🧹 Never Commit These Files
File / Folder	Reason
.terraform/	Dependencies, >600MB size issues
terraform.tfstate	Contains sensitive account details
terraform.tfstate.backup	Same reason
.terraform.lock.hcl	Optional — safe to ignore
