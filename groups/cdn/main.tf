terraform {
  required_version = ">= 1.3.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0, < 6.15.1"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Service = var.service
    }
  }
}

terraform {
  backend "s3" {}
}
