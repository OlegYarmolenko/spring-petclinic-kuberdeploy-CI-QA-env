pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        
        archiveArtifacts artifacts: 'target/spring-petclinic-2.5.0-SNAPSHOT.jar'
      }
    }
  }
}
