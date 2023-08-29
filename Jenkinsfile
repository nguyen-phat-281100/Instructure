pipeline {
    agent any
    
    stages {
        stage('Example stage 1') {
            environment {
                credentials_login = credentials('credentials_login')
                }
            steps {
          withCredentials([string(credentialsId: 'secret_text_id', variable: 'secret_text_variable'), 
                           file(credentialsId: 'credentials_login', variable: 'Username'),
                          sshUserPrivateKey(credentialsId: 'UserPrivateKeyID', keyFileVariable: 'keyFile', passphraseVariable: 'Passphrase', usernameVariable: 'Username')
                          ]) {
              echo "secret_text_variable: ${secret_text_variable}"
              echo "credentials_login: ${credentials_login}"
              echo "credentials_login: ${Username}"
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
