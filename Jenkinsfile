pipeline {
    agent any 
    environment {
        DOCKER_USERNAME = credentials('docker-username')
        DOCKER_PASSWORD = credentials('docker-password')
    }
    stages {

        stage('Checkout') {
            steps {
                checkout scm 
            }
        }

        stage('Test') {
            steps {
                sh 'cd ./src && dotnet test' 
            }
        }
        stage('Build image') {
            steps {
                sh 'docker build -t anhquan99/my-dotnet-api:latest .' 
            }
        }
        stage('Log into Dockerhub') {
            steps {
                sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
            }
        }
        stage('Pus docker image'){
            steps{
                sh 'docker push anhquan99/my-dotnet-api:latest'
            }
        }
    }
}