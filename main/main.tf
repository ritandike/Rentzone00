# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
profile = "Terraform-user"  
}


# configure Terrafrom Backend
terraform {
backend "s3" {
bucket = "terraform-user-lab-001"
key = "terraform.tfstate.dev"
region = "us-east-1"
}
}