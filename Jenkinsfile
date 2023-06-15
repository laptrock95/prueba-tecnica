pipeline {
    agent any

    stages {
        stage('Code Build') {
            steps {
                
                git 'https://bitbucket.org/devsu/demo-devops-nodejs.git'

                
                sh 'npm install'
            }
        }

        stage('Unit Tests') {
            steps {
                
                sh 'npm run test'
            }
        }

        stage('Static Code Analysis') {
            steps {
                
                sh 'npm run lint'
            }
        }

        stage('Code Coverage') {
            steps {
                
                sh 'npm run coverage'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                
                sh 'docker build -t demo-devops-nodejs .'

                
                sh 'docker tag demo-devops-nodejs https://github.com/laptrock95/demo-devops-nodejs:latest'

                
                sh 'docker login -u LAPTROCK95 -p <contraseña> PORSEGURIDADNO'

                

                sh 'docker push https://github.com/laptrock95/demo-devops-nodejs:latest'
            }
        }

        stage('Vulnerability Scan') {
            steps {
                
                sh 'docker run --rm -v /var/run/docker.sock:/var/run/docker.sock quay.io/coreos/clair-scanner:latest --clair="http://clair:6060" <tu-repositorio>/demo-devops-nodejs:latest'
            }
        }
    }
}
