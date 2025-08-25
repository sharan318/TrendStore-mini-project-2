def imageName = 'hari31862/ttr'
def version   = '2.1.5'
pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION='us-east-1'
        EKS_CLUSTER_NAME = 'guvi-devops-eks'
    }
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
         stage('Deploy to EKS') {
            steps {
                    echo "AWS Credentials"
                withAWS(credentials: 'aws_credentials', region: "${AWS_DEFAULT_REGION}") {
                script{
                    sh "aws eks update-kubeconfig --region ${AWS_DEFAULT_REGION} --name ${EKS_CLUSTER_NAME}"
                    sh 'chmod +x deploy.sh && ./deploy.sh'
                    }
                }
            }
        }
    }
}
    
