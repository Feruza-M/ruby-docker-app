pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'git@github.com:Feruza-M/ruby-docker-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ruby-docker-app .'
            }
        }

        stage('Run Container') {
            steps {
                // Удаляем старый контейнер, если есть
                sh 'docker rm -f ruby-docker-app || true'
                sh 'docker run -d -p 5050:80 --name ruby-docker-app ruby-docker-app'
            }
        }
    }
}
