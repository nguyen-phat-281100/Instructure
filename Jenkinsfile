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
              steps {
                 copyArtifacts filter: '**/jsonfile.json', 
                     fingerprintArtifacts: true, 
                     projectName: 'Instructure pipeline'
                    // target: '**/Artifacts'
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
