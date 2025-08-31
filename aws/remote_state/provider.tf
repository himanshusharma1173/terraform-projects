# provider.tf
# ---------------------------
# AWS Provider configuration
# Region is passed via variable (from variables.tf or terraform.tfvars)
# ---------------------------

provider "aws" {
  region = var.aws_region
}
