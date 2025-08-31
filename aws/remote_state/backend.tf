# backend.tf
# ---------------------------
# Define backend type (S3 + DynamoDB)
# Actual values are passed via -backend-config
# ---------------------------

terraform {
  backend "s3" {}
}
