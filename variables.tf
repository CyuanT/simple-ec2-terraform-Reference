variable "ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0b72821e2f351e396"
}

variable "ec2_name" {
  description = "Name of EC2"
  type        = string
  default     = "my-sample-ec2-luqman-from-tf" # Change accordingly
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of EC2 Key Pair"
  type        = string
  default     = "luqman-useast1-13072024" # Change accordingly
}

variable "sg_name" {
  description = "Name of EC2 security group"
  type        = string
  default     = "luqman-ec2-allow-ssh-http-https" # Change accordingly
}

variable "vpc_name" {
  description = "Name of VPC to use"
  type        = string
  default     = "luqman-vpc" # Change accordingly
}

variable "subnet_name" {
  description = "Name of subnet to use"
  type        = string
  default     = "luqman-subnet-public1-us-east-1a" # Change accordingly
}