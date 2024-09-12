pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                checkout scm 
            }
        }

        stage('Build') {
            steps {
                sh 'cd ./src && dotnet build' 
            }
        }

        stage('Test') {
            steps {
                sh 'cd ./src && dotnet test' 
            }
        }

        stage('Deploy') {
            steps {
                // Add your deployment steps here (e.g., copy to a web server, deploy to a container registry, etc.)
                echo 'Deployment logic goes here...' 
            }
        }
    }
}