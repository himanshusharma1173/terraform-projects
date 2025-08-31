# variables.tf
# ---------------------------
# Input variables used across the project
# ---------------------------

variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}
