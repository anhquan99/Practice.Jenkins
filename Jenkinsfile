pipeline {
    agent {
        docker { image 'mcr.microsoft.com/dotnet/sdk:8.0' }
    }
    environment {
        DOTNET_CLI_HOME = "/tmp/DOTNET_CLI_HOME"
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
    }
}
