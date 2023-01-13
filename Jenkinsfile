#!groovy
pipeline {
    agent any
    options {
        timestamps()
    }
    stages {
        stage('构建') {
            steps {
                sh "/bin/sh ./build.sh"
            }
        }
        stage('部署') {
            steps {
                echo "Deploying"
            }
        }
    }
}