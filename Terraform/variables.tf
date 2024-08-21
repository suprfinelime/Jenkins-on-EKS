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

variable "subnet_cidr_block" {
  type = string
  description = "To set cidr for subnet"
  default     = "10.0.10.0/24"
}

variable "availability_zone" {
  type = string
  description = "To set AWS availability region"
  default     = "us-west-2a"
}

variable "env_prefix" {
  type = string
  description = "Set as dev or prod or qa etc. based on desired environment"
  default     = "dev"
}

variable "instance_type" {
  type = string
  description = "To desired instance type for AWS EC2 instance"
  default     = "t2.small"
}