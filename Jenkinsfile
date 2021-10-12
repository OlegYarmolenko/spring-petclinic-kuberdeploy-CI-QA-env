pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        sh 'tar -czf ./webpackage$BUILD_NUMBER.tar.gz src/main/* target/*'
        archiveArtifacts artifacts: 'webpackage.tar.gz'
      }
    }
  }
}
