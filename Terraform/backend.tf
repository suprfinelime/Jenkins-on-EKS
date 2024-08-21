terraform {
  backend "s3" {
    bucket = "stubbs-devops-cicd-terraform-eks"
    region = "us-west-2"
    key = "jenkins-server/terraform.tfstate"
  }
}