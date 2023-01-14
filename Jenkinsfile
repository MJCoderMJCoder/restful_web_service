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
                sh "chmod +777 ./Jenkins/deploy.sh"
                sh "/bin/sh ./Jenkins/deploy.sh"
            }
        }
    }
}