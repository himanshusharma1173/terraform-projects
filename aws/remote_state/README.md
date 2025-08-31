# Terraform Remote Backend Setup (S3 + DynamoDB)

This project creates an **S3 bucket** and a **DynamoDB table** to be used as a remote backend for Terraform.

## 📌 Components
- **S3 bucket** → Stores Terraform state files
- **DynamoDB table** → Provides state locking to avoid race conditions


