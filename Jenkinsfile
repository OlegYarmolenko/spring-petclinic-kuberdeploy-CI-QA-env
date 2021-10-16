pipeline {
    agent any
    environment {
        //be sure to replace "willbla" with your own Docker Hub username
        DOCKER_IMAGE_NAME = "oyrmlnko/spring-petclinic"
    }
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
                branch 'master'
            }
            steps {
                script {
                    app = docker.build(DOCKER_IMAGE_NAME)
                    app.inside {
                        sh 'echo Hello, World!'
                    }
                }
            }
        }
        stage('Push Docker Image') {
            when {
                branch 'master'
            }
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
        stage('DeployToProduction') {
            when {
                branch 'master'
            }
            steps {
                input 'Deploy to Production?'
                milestone(1)
                kubernetesDeploy(
                    kubeconfigId: 'K8s',
                    configs: 'spring-petclinic-kube.yml',
                    enableConfigSubstitution: true
                )
            }
        }
    }
}
