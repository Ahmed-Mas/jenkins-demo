pipeline {
    agent any
    environment {
        imageId = 'jenkins-demo:' + ${currentBuild.number}
    }
    stages {
        stage("Build/Test") {
            steps{
                sh "docker build --no-cache --force-rm -t ${imageId} ."
                sh "docker run --name jenkins${currentBuild.number} ${imageId}"
                sh "docker exec jenkins${currentBuild.number} pylint demo"
                sh "docker exec jenkins${currentBuild.number} pytest"
            }
        }
        stage("Clean") {
            steps{
                sh "docker rmi ${imageId}"
            }
        }
    }
}