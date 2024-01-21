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
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-ryohei"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "ryohei_IAM_IC"
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

variable "domain" {
  type = string
}

