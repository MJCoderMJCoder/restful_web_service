#!groovy
pipeline {
    agent any
    options {
        timestamps()
    }
    stages {
        stage('构建') {
            steps {
                sh "/bin/sh ./Jenkins/build.sh"
            }
        }
        stage('部署') {
            steps {
                sh "/bin/sh ./Jenkins/deploy.sh"
            }
        }
    }
    post {
        always {
                sh "/bin/sh ./Jenkins/clean.sh"
        }
    }
}