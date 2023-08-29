pipeline {
    agent any
    
    stages {
        // stage('Clone Repository') {
        //     steps {
        //             git 'https://github.com/nguyen-phat-281100/Instructure'
        //           }  
        //     }

        stage('Example stage 1') {
            environment {
                credentials_login = credentials('credentials_login')
                }
            steps {
                // echo "Global property file: ${credentials_login}"
                // withCredentials(bindings: [credentials_login(credentialsId: 'credentials_login', \
                //                                        usernameVariable: 'Username', \
                //                                        passwordVariable: 'Password')]) {
                // }
          withCredentials([file(credentialsId: 'credentials_login', variable: 'credentials_login')]) {

              def secretFileContent = readFile(credentials_login).trim()
                        def parts = secretFileContent.split('=')
                        def username = parts[1]
                        
                        echo "Username from secret file: ${username}"
              // echo "**************: ${USERNAME}***************"
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
