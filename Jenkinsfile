pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        sh 'tar -czf ./wepackage.tar.gz .src/main/ .target'
        archiveArtifacts artifacts: 'wepackage.tar.gz'
      }
    }
  }
}
