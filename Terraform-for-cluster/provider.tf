provider "aws" {
  shared_config_files      = ["/home/ec2-user/.aws/config"]
  shared_credentials_files = ["/home/ec2-user/.aws/credentials"]
  profile = "default"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.region
}