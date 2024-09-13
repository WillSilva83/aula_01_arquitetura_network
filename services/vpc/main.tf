provider "aws" {
   region = "sa-east-1"
}

## VPC MAIN 
resource "aws_vpc" "vpc_primary" {
    cidr_block = "10.0.0.0/16"  
}

## SUBNETS 
resource "aws_subnet" "private_A" {
  vpc_id = aws_vpc.vpc_primary.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    "Name" = "Private_A",
    "Type" = "Network",
    "Source" = "Terraform"

  }

}

resource "aws_subnet" "private_B" {
  vpc_id = aws_vpc.vpc_primary.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "sa-east-1b"

    tags = {
    "Name" = "Private_B",
    "Type" = "Network",
    "Source" = "Terraform"
  }
}

resource "aws_subnet" "public_A" {
    vpc_id = aws_vpc.vpc_primary.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "sa-east-1a"

    tags = {
    "Name" = "Public_A",
    "Type" = "Network",
    "Source" = "Terraform"
  }
  
}

resource "aws_subnet" "public_B" {
    vpc_id = aws_vpc.vpc_primary.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "sa-east-1b"

    tags = {
    "Name" = "Public_B",
    "Type" = "Network",
    "Source" = "Terraform"
  }
  
}

## TABLE ROUTE

## IGW 

