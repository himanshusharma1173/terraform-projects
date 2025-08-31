# versions.tf
# ---------------------------
# Define required Terraform and provider versions
# This ensures consistency across team members
# ---------------------------

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
