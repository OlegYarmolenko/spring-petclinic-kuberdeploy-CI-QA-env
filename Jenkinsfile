pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh './mvnw package'
                sh "tar -czf ./spring-petclinic-package.tar.gz target/spring-petclinic-2.5.0-SNAPSHOT.jar"
                archiveArtifacts artifacts: "spring-petclinic-package.tar.gz"
            }
        }
        stage('Build Docker Image') {
            when {
                branch 'main'
            }
            steps {
                script {
                    app = docker.build("oyrmlnko/spring-petclinic")
                    app.inside {
                        sh 'echo $(curl localhost:8080)'
                }
            }
        }
    }
}
}
