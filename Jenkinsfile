pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                // Build Docker image
                script {
                    docker.build('magic-cursor:latest')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run Docker container with container name 'test'
                script {
                    docker.image('magic-cursor:latest').run("-d -p 5000:5000 --name test magic-cursor")
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline execution successful!'
        }
        failure {
            echo 'Pipeline execution failed!'
        }
    }
}
