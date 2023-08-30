pipeline {
    agent any
    
    stages {
        stage ('push artifact') {
            steps {
                sh 'mkdir archive'
                sh 'echo test > archive/test.txt'
                // zip archive: true, defaultExcludes: false, dir: '', exclude: '', glob: '', overwrite: true, zipFile: 'jsonfile.json'
                archiveArtifacts artifacts: '**/*.json', followSymlinks: false            }
        }

        // stage('pull artifact') {
        //     steps {
        //         copyArtifacts filter: 'jsonfile.json', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
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
