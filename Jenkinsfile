pipeline {
    agent any
    
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }  
            }

        stage('Example stage 1') {
            environment {
                MY_KUBECONFIG = credentials('credentials_login')
                }
            steps {
                echo "Global property file: ${MY_KUBECONFIG}"
                withCredentials(bindings: [credentials_login(credentialsId: 'credentials_login', \
                                                       usernameVariable: 'Username', \
                                                       passwordVariable: 'Password')]) {
            }
        }
    }
    
    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD pipeline failed!'
        }
    }
}
}
