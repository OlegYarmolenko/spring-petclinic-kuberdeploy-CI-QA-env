pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh './mvnw package'
                sh "tar -czf ./spring-petclinic-package${env.BUILD_NUMBER}.tar.gz target/spring-petclinic-2.5.0-SNAPSHOT.jar"
                archiveArtifacts artifacts: "spring-petclinic-package${env.BUILD_NUMBER}.tar.gz"
            }
        }
        stage('Build Docker Image') {
            when {
                branch 'main'
            }
            steps {
                script {
                    app = docker.build("oyrmlnko/spring-petclinic${env.BUILD_NUMBER}")

                }
            }
        }
    }
}
