# main.tf
# ---------------------------
# Main Terraform configuration
# Creates:
#  - S3 bucket for storing Terraform state
#  - DynamoDB table for state locking
# ---------------------------

# Get AWS Account ID (used in bucket naming to ensure uniqueness)
data "aws_caller_identity" "current" {}

# Create S3 bucket for Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "${data.aws_caller_identity.current.account_id}-terraform-states"

  # Enable versioning to keep history of state files
  versioning {
    enabled = true
  }

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# DynamoDB table for Terraform state locking
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
