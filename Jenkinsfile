
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
    }
}
