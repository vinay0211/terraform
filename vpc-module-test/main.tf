module "vpc" {
 source = "git::https://github.com/daws-84s/terraform-aws-vpc.git?ref=main"
 project = var.project
 environment = var.environment
 public_subnet_cidrs = var.public_subnet_cidrs
 private_subnet_cidrs = var.private_subnet_cidrs
 database_subnet_cidrs = var.database_subnet_cidrs
}