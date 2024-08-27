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
                    // #Give the location of terraform scripts directory relative 
                    // #to the repo
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
                    // #Give the location of kubernetes scripts directory relative 
                    // #to the repo
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --region us-west-2 --name myjenkins-server-eks-cluster"
                        sh "kubectl create namespace nginx-app"
                        sh "helm install nginx-test-v1 /var/lib/jenkins/workspace/Test-EKS-Pipeline/kubernetes/nginx -n nginx-app"
                        // sh "kubectl apply -f deployment.yaml"
                        // sh "kubectl apply -f service.yaml"
                    }
                }
            }
        }
    }
}