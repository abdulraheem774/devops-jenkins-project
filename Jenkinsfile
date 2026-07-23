pipeline {
    agent any

    environment {
        APP_NAME = 'my-web-app'
        PORT = '8080'
    }

    stages {
        stage('1. Checkout Code') {
            steps {
                echo 'Fetching latest code from GitHub repository...'
                checkout scm
            }
        }

        stage('2. Code Linting & Validation') {
            steps {
                echo 'Checking if Dockerfile exists...'
                sh '[ -f Dockerfile ] && echo "Dockerfile found!" || exit 1'
            }
        }

        stage('3. Build Docker Image') {
            steps {
                echo 'Building Docker image for the web app...'
                sh "docker build -t ${APP_NAME}:latest ."
            }
        }

        stage('4. Deploy Application') {
            steps {
                echo 'Deploying application to Docker container...'
                sh """
                    # Purane container ko stop aur remove karna (agar chal raha ho)
                    docker stop ${APP_NAME} || true
                    docker rm ${APP_NAME} || true
                    
                    # Naya container start karna
                    docker run -d --name ${APP_NAME} -p ${PORT}:80 ${APP_NAME}:latest
                """
            }
        }
    }

    post {
        success {
            echo "Deployment Successful! Web app is live at http://localhost:${PORT}"
        }
        failure {
            echo "Pipeline Failed. Please check the build logs."
        }
    }
}

