pipeline {
    agent any
    
    stages {
        stage ('artifact') {
            steps {
                 archiveArtifacts artifacts: '**/*.json', followSymlinks: false
            }
        }

        stage('Deploy') {
            script{
                sh 'ls'
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
