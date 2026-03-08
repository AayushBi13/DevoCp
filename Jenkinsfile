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
                sh 'chmod +x log-archive.sh'
                sh './log-archive.sh /var/log'
            }
        }
    }
}