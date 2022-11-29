terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    region = "us-east-1"
    bucket = "algodx-codepipeline-tf-state"
    key    = "terraform/terraform.tfstate"
  }
}
