provider "aws" {
  region = "us-east-1"
  profile = "terraform_usr2"
}

# terraform state file in S3
terraform {
  backend "s3" {
    bucket = "jp-terraform-project1-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform_usr2"
  }
}


