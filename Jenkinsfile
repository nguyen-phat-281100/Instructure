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
                           sshUserPrivateKey(credentialsId: 'UserPrivateKeyID', keyFileVariable: 'keyFile', passphraseVariable: 'Passphrase', usernameVariable: 'Username'),
                           usernamePassword(credentialsId: '8c36a67f-9028-4d4f-af5a-095af9a078f3', passwordVariable: 'pass', usernameVariable: 'username')
                          ]) {
              echo "secret_text_variable: ${secret_text_variable}"
              echo "credentials_login: ${Username1}"
              echo "Passphrase: ${Username}"
              echo "Passphrase: ${Passphrase}"
              echo "keyFile: ${keyFile}"
              echo "UserPrivateKeyID: ${username}"
              echo "UserPrivateKeyID: ${pass}"
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
