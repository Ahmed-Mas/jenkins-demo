pipeline {
    options {
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')
    }

    agent { Dockerfile {true} }
    stages {
        stage("Build/Test") {
            sh 'pylint demo'
            sh 'pytest'
        }
    }
}