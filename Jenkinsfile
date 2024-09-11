pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage("Run console"){
            steps {
                sh 'python3 app.py'
            }
        }
    }
}