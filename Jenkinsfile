#!groovy
pipeline {
    agent any
    options {
        timestamps()
    }
    stages {
        stage('build') {
            steps {
                echo "build"
                sh 'java --version'
            }
        }
    }
}