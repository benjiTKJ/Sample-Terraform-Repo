terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  region    = "${var.aws_region}"
}

variable "aws_region" {
    default = "ap-southeast-1"
}

provider "github" {
  token        = "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"
  organization = "benjiTKJ"
}