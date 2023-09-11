# Basic VPC Module
resource "aws_vpc" "this" {

  vpc_name             = var.vpc_name
  environment          = var.environment
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "${var.name}-${var.environment}"
  }
}