pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest' 
            }
        }

        stage('Build Image') { // Optional: If you're containerizing your FastAPI app
            steps {
                sh 'docker build -t my-fastapi-app .'
            }
        }

        stage('Deploy') {
            steps {
                // Add your deployment steps here (e.g., deploy to a cloud platform, copy files to a server, etc.)
                echo 'Deployment steps go here...'
            }
        }
    }
}