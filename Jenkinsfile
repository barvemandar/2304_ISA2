pipeline {
    agent any 

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    
                    bat "docker build -t isa2mandar ."
                }
            }
        }
        stage('Build and Run Docker Container') {
            steps {
                script {
                   
                    bat "docker rm -f my-app-container || exit 0"

                    bat "docker run -d --name my-app-container isa2mandar"
                }
            }
        }
    }
}
