pipeline {
    agent any
	tools {
        maven 'maven-3.9.9'
    }
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
		
    }
}