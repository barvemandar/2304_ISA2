pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
               git url: 'https://github.com/barvemandar/2304_ISA2.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
               
                script {
                    def image = docker.build("isa2-flask:${env.BUILD_ID}")
                }
            }
        }
      
        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker run -d --name 2304 -p 5000:5000 isa2-flask:${env.BUILD_ID}"
                }
            }
        }
    }
}
