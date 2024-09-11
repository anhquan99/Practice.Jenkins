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
                sh 'dotnet build' 
            }
        }

        stage('Test') {
            steps {
                sh 'dotnet test' 
            }
        }

        stage('Publish') {
            steps {
                sh 'dotnet publish -c Release -o publish_output' 
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