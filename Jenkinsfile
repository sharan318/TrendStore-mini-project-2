def imageName = 'hariharan/ttr'
def version   = '2.1.5'
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage("Docker Image Creation"){
            steps{
                echo "This is the building the code"
                sh "docker build -t ${imageName}:${version} ."
                echo "Build is Successfully"
            }
        }
        stage("Push to DockerHub") {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'docker-cred',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )]) {
                    echo "Logging in to Docker Hub..."
                    sh "echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin"
                    
                    echo "Pushing image to Docker Hub..."
                    sh "docker push ${imageName}:${version}"
                
                }
            }
        }

    }
}
