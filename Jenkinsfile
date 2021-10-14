pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        sh "tar -czf ./spring-petclinic-package${env.BUILD_NUMBER}.tar.gz target/spring-petclinic-2.5.0-SNAPSHOT.jar"
        archiveArtifacts artifacts: "spring-petclinic-webpackage${env.BUILD_NUMBER}.tar.gz"
      }
    }
  }
}
