pipeline {
    agent any
    
    stages {
        stage ('artifact') {
            steps {
                 archiveArtifacts artifacts: '**/*.json', followSymlinks: false
            }
        }

        // stage('Deploy') {
        //       steps {
        // // Download the archived artifact
        //          copyArtifacts filter: '**/jsonfile.json', 
        //              fingerprintArtifacts: true, 
        //              projectName: 'Instructure pipeline',
        //              target: 'C:\ProgramData\Jenkins\.jenkins\workspace\Instructure pipeline\artifact'
        //       }
        // }
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
