pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        sh 'tar -czf ./wepackage.tar.gz .src/main/webapp .target'
        archiveArtifacts artifacts: 'wepackage.tar.gz'
      }
    }
  }
}
