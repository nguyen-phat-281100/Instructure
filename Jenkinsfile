pipeline {
    agent any
    
    stages {
        stage('Example stage 1') {
            environment {
                credentials_login = credentials('credentials_login')
                }
            steps {
          withCredentials([file(credentialsId: 'credentials_login', variable: 'credentials_login')]) {
              echo "############${credentials_login}############"
                    }
            }
        }
    }
    post {
        success {
            echo 'pipeline completed successfully!'
        }
        failure {
            echo 'pipeline failed!'
        }
    }
}
