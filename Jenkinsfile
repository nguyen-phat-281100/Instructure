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

              echo "****************${credentials_login}*****************"
             
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
