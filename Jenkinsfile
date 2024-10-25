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
                    // Remove any existing container with the same name to avoid conflicts
                    bat "docker rm -f my-app-container || exit 0"

                    // Run the Docker container in detached mode
                    bat "docker run -d --name my-app-container isa2mandar"
                }
            }
        }
    }
}
