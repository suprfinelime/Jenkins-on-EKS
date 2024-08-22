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
                        sh ". /var/lib/jenkins/workspace/Test-EKS-Pipeline/Terraform-for-cluster/terraform-cluster-setup.sh"
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
                        sh "aws eks update-kubeconfig --name $CLUSTER_NAME"
                        sh "kubectl apply -f deployment.yaml"
                        sh "kubectl apply -f service.yaml"
                    }
                }
            }
        }
    }
}