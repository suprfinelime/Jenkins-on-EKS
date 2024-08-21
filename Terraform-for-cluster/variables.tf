variable "aws_access_key" {
  description = "Access key"
  type        = string
  #default = ""
}

variable "aws_secret_key" {
  description = "Secret key"
  type        = string
  #default = ""
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  type = string
  description = "To set cidr for vpc"
  default     = "10.0.0.0/16"
}

variable "private_subnet_cidr_blocks" {
  description = "To set cidr for private subnet"
  type = list(string)
  default     = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}

variable "public_subnet_cidr_blocks" {
  description = "To set cidr for public subnet"
  type = list(string)
  default     = ["10.0.4.0/24","10.0.5.0/24","10.0.6.0/24"]
}