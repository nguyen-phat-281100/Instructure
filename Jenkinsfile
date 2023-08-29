pipeline {
    agent any
    
    stages {
        stage('Example stage 1') {
            environment {
                credentials_login = credentials('credentials_login')
                }
            steps {
          withCredentials([string(credentialsId: 'secret_text_id', variable: 'secret_text_variable'), 
                           file(credentialsId: 'credentials_login', variable: 'credentials_login')]) {
              echo "############${secret_text_variable}############"
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
