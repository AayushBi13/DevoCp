pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Run Log Archive') {
            steps {
                sh 'chmod +x log_archive.sh'
                sh './log_archive.sh /var/log'
            }
        }
    }
}