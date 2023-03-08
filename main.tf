variable "cidr_vpc" {
  description = "CIDR block for the VPC"
}

resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_arn" {
  value = aws_vpc.vpc.arn
}

output "vpc_enable_dns_support" {
  value = aws_vpc.vpc.enable_dns_support
}

output "vpc_owner_id" {
  value = aws_vpc.vpc.owner_id
}