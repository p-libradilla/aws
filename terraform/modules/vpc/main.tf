# Basic VPC Module ####
resource "aws_vpc" "this" {

  vpc_name             = var.vpc_name
  environment          = var.environment
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "${var.vpc_name}-${var.environment}"
  }
}

resource "aws_subnet" "this" {
  vpc_id     = aws_vpc.this.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.subnet_name
  }
}