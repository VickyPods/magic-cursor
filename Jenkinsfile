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
            // Check if Docker container is running
            script {
                def isRunning = sh(script: 'docker ps --filter "name=test" --format "{{.Names}}"', returnStatus: true) == 0
                echo "Is Docker container running? ${isRunning}"
            }
        }
        failure {
            echo 'Pipeline execution failed!'
        }
    }
}
