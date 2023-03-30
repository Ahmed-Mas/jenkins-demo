pipeline {
    agent any
    environment {
        imageId = "jenkins-demo:${currentBuild.number}"
    }
    stages {
        stage("Build/Test") {
            steps{
                sh "docker build --no-cache --force-rm -t ${imageId} ."
                sh "docker run -it --name jenkins${currentBuild.number} ${imageId}"
                sh "pylint demo"
                sh "pytest"
            }
        }
        stage("Clean") {
            steps{
                sh "docker rmi ${imageId}"
            }
        }
    }
}