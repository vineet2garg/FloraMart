terraform {
  required_version = "~>0.14"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region                  = "ap-southeast-2"
  profile                 = "default"
  shared_credentials_file = "C:/Users/s303006/.aws/credentials"
}