
pipeline {
    agent {
        node {
            label 'maven'
        }
    }
    stages {
        stage("Code-build"){
            steps {
                 echo "----------- build started ----------"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                 echo "----------- build complted ----------"
            }
        }
      
}
}
