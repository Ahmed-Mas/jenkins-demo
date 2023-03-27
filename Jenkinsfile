pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                git branch: 'main', poll: false, url: 'https://github.com/Ahmed-Mas/jenkins-demo'
            }
        }
        stage('test') {
            steps {
                sh 'pytest'
            }
        }
    }
}