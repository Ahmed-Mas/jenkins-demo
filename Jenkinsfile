node {
    stage('Build/Test') {
        checkout scm
        def testImage = docker.build("test-image") 
        testImage.inside {
            sh 'pytest'
        }
    }
}