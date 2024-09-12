pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                checkout scm 
            }
        }

        stage('Test') {
            steps {
                sh 'cd /src && dotnet test' 
            }
        }

        stage('Build image') {
            steps {
                sh 'docker build -t anhquan99/my-dotnet-api:latest' 
            }
        }

        stage('Login to docker hub') {
            environment{
                DOCKERHUB_USER = ''
                DOCKERHUB_PASSWORD = ''
            }
            steps {
                echo 'Login to docker hub'
                sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD' 
            }
        }
        stage('Pus docker image'){
            steps{
                sh 'docker push anhquan99/my-dotnet-api:latest'
            }
        }
    }
}