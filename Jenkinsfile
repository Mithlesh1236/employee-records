pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'feature/2024.08/employee-records', url: 'https://github.com/Mithlesh1236/employee-records'
            }
        }

        stage('Build') {
            steps {
                script {
                    bat 'mvn clean install'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    bat 'mvn test'
                }
            }
        }

        stage('Deploy to DEV') {
            steps {
                script {
                    echo 'Deploying to DEV environment...'
                    bat 'start /B java -jar D:\\Java-work-space\\employee-crud\\target\\employee-crud-0.0.1-SNAPSHOT.jar'
                }
            }
        }

        stage('Deploy to QA') {
            steps {
                script {
                    echo 'Deploying to QA environment...'
                    // Add your deployment commands here
                }
            }
        }

        stage('Deploy to PROD') {
            steps {
                script {
                    echo 'Deploying to PROD environment...'
                    // Add your deployment commands here
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }

        success {
            echo 'Pipeline succeeded.'
        }

        failure {
            echo 'Pipeline failed.'
        }
    }
}
