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
                sh 'docker build -t flask-app .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker rm -f flask-app || true
                docker run -d --name flask-app -p 5000:5000 flask-app
                '''
            }
        }
    }
}
