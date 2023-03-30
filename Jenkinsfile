pipeline {
    agent any
    environment {
        imageId = 'jenkins-demo'
    }
    stages {
        stage("Build/Test") {
            steps{
                sh "docker build --no-cache --force-rm -t ${imageId} ."
                sh "docker run --name ${currentBuild.number} ${imageId}"
                sh "docker exec ${currentBuild.number} pylint demo"
                sh "docker exec ${currentBuild.number} pytest"
            }
        }
        stage("Clean") {
            steps{
                sh "docker rmi ${imageId}"
            }
        }
    }
}