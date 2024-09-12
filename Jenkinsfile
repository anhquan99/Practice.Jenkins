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
                sh 'cd ./src && dotnet test' 
            }
        }

        stage('whoami') {
            steps {
                sh 'whoami' 
            }
        }

        stage('Build image') {
            steps {
                sh 'sudo docker build -t anhquan99/my-dotnet-api:latest .' 
            }
        }

        stage('Pus docker image'){
            steps{
                sh 'sudo docker push anhquan99/my-dotnet-api:latest'
            }
        }
    }
}