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
  # profile = "ryohei_IAM_IC"
  region = "ap-northeast-1"
}

provider "aws" {
  alias = "virginia"
  # profile = "ryohei_IAM_IC"
  region = "us-east-1"
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

