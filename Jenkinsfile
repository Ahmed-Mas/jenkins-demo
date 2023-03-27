pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build/Test') {
      steps {
        sh 'pylint demo'
        sh 'pytest'
      }
    }

  }
}