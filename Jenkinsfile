pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/memeshah/java-devops-demo.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t hello-world-app .'
            }
        }

        stage('Load Image into Minikube') {
            steps {
                bat 'minikube image load hello-world-app'
            }
        }

        stage('Deploy to Minikube') {
            steps {
                bat 'kubectl apply -f deployment.yaml'
            }
        }
    }
}