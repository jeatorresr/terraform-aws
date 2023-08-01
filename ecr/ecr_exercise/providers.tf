provider "aws" {
  region = "us-east-1"
  alias  = "virginia"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0, < 5.0.0"
    }
  }
}
