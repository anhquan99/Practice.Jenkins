pipeline {
    agent any 
    environment {
        DOCKER_USERNAME = credentials('docker-username')
        DOCKER_PASSWORD = credentials('docker-password')
    }
    stages {
        stage('print env')
        {
            steps{
                echo '$DOCKER_USERNAME'
                echo '$DOCKER_PASSWORD'
            }
        }
        // stage('Checkout') {
        //     steps {
        //         checkout scm 
        //     }
        // }

        // stage('Test') {
        //     steps {
        //         sh 'cd ./src && dotnet test' 
        //     }
        // }
        // stage 
        // stage('Build image') {
        //     steps {
        //         sh 'docker build -t anhquan99/my-dotnet-api:latest .' 
        //     }
        // }

        // stage('Pus docker image'){
        //     steps{
        //         sh 'docker push anhquan99/my-dotnet-api:latest'
        //     }
        // }
    }
}