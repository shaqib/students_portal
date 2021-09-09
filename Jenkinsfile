pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker stop student_enrollment'
                sh 'docker rm student_enrollment'
                sh 'docker rmi student_enrollment'
                sh 'docker build -t student_enrollment .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run --name student_enrollment -d -p 3000:3000 student_enrollment'
            }
        }
    }
}