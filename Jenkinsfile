pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t flask-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
				sudo docker rm -f flask-app || true
				sudo docker run -d -p 80:5000 --name flask-app flask-app
               
                '''
            }
        }
    }
}
