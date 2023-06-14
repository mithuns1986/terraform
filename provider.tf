terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
     }
   backend "s3" {
     region         = "us-east-1"
     #region = var.aws_region
     bucket         = "mtt-aws-devops-april-2023"
     #bucket         = var.bucket
     key            = "terraform.tfstate"
     dynamodb_table = "tf-db-lock"
     #profile        = ""
     #role_arn       = ""
     encrypt        = true
   }
}
 
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
