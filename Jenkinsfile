#!groovy
pipeline {
    agent any
    options {
        timestamps()
    }
    stages {
        stage('构建') {
            steps {
                sh "./gradle build"
            }
        }
        stage('部署') {
            steps {
                echo "Deploying"
            }
        }
    }
}