variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID to join devops"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags"  {
    type = map(string)
    default = {
    Name = "roboshop"
    purpose = "variable-demo"
    }
}
variable "sg_name" {
    default = "allow_all"
}
variable "sg_description" {
    default = "Allowing all ports from all over the Internet"
}
variable "from_port"{
    default=0
}
variable "to_port" {
    default=0
}
variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
}
variable "sg_tags" {
    default = {
        name= "allow_all"
    }
}
variable "environment"{
    default="prod"
}
variable "instances" {
    default= ["roboshop", "mysql", "redis", "rabbitmq"]
}
variable "domain_name" {
    default= "dvkpro.site"
}