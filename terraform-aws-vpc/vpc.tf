resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
 
}
  resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
   tags = {
    Name = "main"
  }
}
