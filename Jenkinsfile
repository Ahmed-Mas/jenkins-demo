pipeline {
    agent any
    environment {
        imageId = "jenkins-demo:${currentBuild.number}"
    }
    stages {
        stage("Build/Test") {
            steps{
                sh "docker build --no-cache --force-rm -t ${imageId} ."
            }
        }
        stage("Clean") {
            steps{
                sh "docker rmi ${imageId}"
            }
        }
    }
}