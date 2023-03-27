node {
    stage('Build/Test') {
        checkout scm
        def testImage = docker.build("test-image") 
        testImage.inside {
            sh 'pwd'
            sh 'ls -l'
            sh 'pylint demo'
            sh 'pytest'
        }
    }
}
