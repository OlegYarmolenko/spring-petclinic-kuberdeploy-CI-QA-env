pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation'
        sh './mvnw package'
        sh "tar -czf ./webpackage.tar.gz target/spring-petclinic.${env.BUILD_NUMBER}.jar"
        archiveArtifacts artifacts: 'webpackage.tar.gz'
      }
    }
  }
}
