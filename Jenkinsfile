pipeline {
    agent any
    
    stages {
        stage ('artifact') {
            steps {
                 archiveArtifacts artifacts: '**/*.json', followSymlinks: false
            }
        }

        // stage('pull artifact') {
        //     steps {
        //         copyArtifacts filter: 'jsonfile.json', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
        //         unzip zipFile: 'test.zip', dir: './archive_new'
        //         sh 'cat archive_new/test.txt'
        //     }
        // }

        // stage('Deploy') {
        //       steps {
        // // Download the archived artifact
        //          copyArtifacts filter: '*.json', 
        //              fingerprintArtifacts: true, 
        //              projectName: 'Instructure pipeline'
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
