terraform {
  backend "s3" {
    bucket = "stubbs-devops-cicd-terraform-eks"
    region = "us-west-2"
    key = "eks/terraform.tfstate"
  }
}