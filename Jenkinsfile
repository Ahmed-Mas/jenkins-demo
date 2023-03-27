pipeline {
    agent { dockerfile true }
    stages {
        stage("Build/Test") {
            steps{
                sh 'pylint demo'
                sh 'pytest'
            }
        }
    }
}