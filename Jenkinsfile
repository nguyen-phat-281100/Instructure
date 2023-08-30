pipeline {
    agent any
    
    stages {
        stage ('artifact') {
            steps {
                 archiveArtifacts artifacts: '**/*.json', followSymlinks: false
            }
        }

        stage('Deploy') {
            steps {
                bat '
                dir
                mkdir Artifacts
                '
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
