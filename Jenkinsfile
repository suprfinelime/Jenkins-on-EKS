//Jenkinsfile
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-west-2"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('Terraform-for-cluster') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {

                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --region us-west-2 --name myjenkins-server-eks-cluster"
                        sh "kubectl create namespace nginx-app"
                        sh "helm install nginx-test-v1 /var/lib/jenkins/workspace/Test-EKS-Pipeline/kubernetes/nginx -n nginx-app"
                    }
                }
            }
        }
    }
}