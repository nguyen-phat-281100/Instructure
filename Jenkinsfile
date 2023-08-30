pipeline {
    agent any
    
    stages {
        stage('Example stage 1') {
            environment {
                credentials_login = credentials('credentials_login')
                }
            steps {
              archiveArtifacts artifacts: '**/*.json', followSymlinks: false
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
