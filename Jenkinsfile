pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/mohamedjomaa1/devops-frontend.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build -- --configuration production'
            }
        }
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t your-dockerhub-username/devops-frontend .'
                sh 'docker push your-dockerhub-username/devops-frontend'
            }
        }
    }
}
