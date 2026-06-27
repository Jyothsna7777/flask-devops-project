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

                docker rmi flask-app || true

                docker build --no-cache -t flask-app .

                docker run -d -p 5000:5000 --name flask-app flask-app 

                '''

            }

        }

    }

}
