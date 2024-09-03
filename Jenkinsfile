pipeline {
    agent any
    stages {
        stage('git-code-download') {
            steps {
                echo "download code from git"
                git branch: 'main', url: 'https://github.com/Mobinbhojani/Jenkins-Sonarqube-Docker.git'
            }
        }
        stage('build') {
            steps {
                echo "doing build"
                sh '''
                docker build -t mobinbhojani/htmlwebsite:${BUILD_NUMBER} .
                docker tag mobinbhojani/htmlwebsite:${BUILD_NUMBER} mobinbhojani/htmlwebsite:latest
                docker push mobinbhojani/htmlwebsite:${BUILD_NUMBER}
                docker push mobinbhojani/htmlwebsite:latest
                '''
            }
        }
    }
}
