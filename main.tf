resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-TF"
  }
}


resource "aws_subnet" "main" {
 vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "TF-subnet-1"
    Environment = "Test"
    ManagedBy	= "Terraform"
  }
}

resource "aws_subnet" "main2" {
 vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "TF-subnet-2"
    Environment = "Test"
    ManagedBy	= "Terraform"
  }
}