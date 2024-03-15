pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the repository
                git 'https://github.com/VickyPods/magic-cursor.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image with the name 'magic-cursor'
                sh 'docker build -t magic-cursor .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run the Docker container on port 5000
                sh 'docker run -d -p 5000:5000 magic-cursor'
            }
        }
    }
}
