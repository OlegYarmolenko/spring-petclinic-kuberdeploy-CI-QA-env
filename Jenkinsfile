pipeline {
  agent any
  stages {
    stage ('Build') {
      steps {
        echo 'Running build automation ${env.BUILD_ID} ${env.JENKINS_URL}'
        echo "The build number is ${env.BUILD_NUMBER}"
        echo "You can also use \${BUILD_NUMBER} -> ${BUILD_NUMBER}"
        sh 'echo "I can access $BUILD_NUMBER in shell command as well."'
      }
    }
  }
}
