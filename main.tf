# --------------------------
# Terraform configuration
# --------------------------
terraform {
  required_version = ">= 1.6.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31"
    }
  }
}

# --------------------------
# Provider
# --------------------------
provider "aws" {
  # profile = "terraform"
  region = "ap-northeast-1"
}

# --------------------------
# Variables
# --------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string

}

