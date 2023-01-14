#!groovy
pipeline {
    agent any
    options {
        timestamps()
    }
    stages {
        stage('构建') {
            steps {
                sh "sudo /bin/sh ./Jenkins/build.sh"
            }
        }
        stage('部署') {
            steps {
                sh "sudo /bin/sh ./Jenkins/deploy.sh"
            }
        }
    }
}