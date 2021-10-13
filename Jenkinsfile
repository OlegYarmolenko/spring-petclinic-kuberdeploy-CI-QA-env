pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        sh 'tar -czf ./webpackage.tar.gz target/spring-petclinic-2.5.0-SNAPSHOT.jar'
        archiveArtifacts artifacts: 'webpackage.tar.gz'
      }
    }
  }
}
