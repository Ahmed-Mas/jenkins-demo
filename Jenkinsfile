pipeline {
    agent { dockerfile true }
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')
    }
    stages {
        stage("Build/Test") {
            steps{
                sh 'pylint demo'
                sh 'pytest'
            }
        }
    }
}