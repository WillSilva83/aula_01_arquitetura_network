provider "aws" {
  region = "sa-east-1"
}


module "vpc_primary" {
  source = "./services/vpc"
}