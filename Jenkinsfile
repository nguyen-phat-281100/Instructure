pipeline {
    agent any
    
    stages {
        stage('Example stage 1') {
            environment {
                credentials_login = credentials('credentials_login')
                }
            steps {
              echo "secret_text_variable: ${credentials_login }"
          withCredentials([string(credentialsId: 'secret_text_id', variable: 'secret_text_variable'), 
                           file(credentialsId: 'credentials_login', variable: 'Username1'),
                          sshUserPrivateKey(credentialsId: 'UserPrivateKeyID', keyFileVariable: 'keyFile', passphraseVariable: 'Passphrase', usernameVariable: 'Username')
                          ]) {
              echo "secret_text_variable: ${secret_text_variable}"
              echo "credentials_login: ${Username1}"
              echo "Passphrase: ${Username}"
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
