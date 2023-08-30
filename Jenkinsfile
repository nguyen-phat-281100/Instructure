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
        // Download the archived artifact
                 copyArtifacts filter: '**.json', 
                     fingerprintArtifacts: true, 
                     projectName: 'Instructure pipeline'
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
