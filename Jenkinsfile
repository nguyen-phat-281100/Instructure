pipeline {
    agent any
    
    stages {
        stage ('push artifact') {
            steps {
                archiveArtifacts artifacts: 'jsonfile.json', fingerprint: true
            }
        }

        // stage('pull artifact') {
        //     steps {
        //         copyArtifacts filter: 'test.zip', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
        //         unzip zipFile: 'test.zip', dir: './archive_new'
        //         sh 'cat archive_new/test.txt'
        //     }
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
