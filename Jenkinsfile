pipeline {
    agent any
    
    stages {
        stage ('pull git') {
            git 'https://github.com/nguyen-phat-281100/Instructure.git'
        }
        stage ('push artifact') {
            steps {
                sh 'mkdir archive'
                sh 'echo test > archive/test.txt'
                zip zipFile: 'test.zip', archive: false, dir: 'archive'
                archiveArtifacts artifacts: 'test.zip', fingerprint: true
            }
        }

        stage('pull artifact') {
            steps {
                copyArtifacts filter: 'test.zip', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
                unzip zipFile: 'test.zip', dir: './archive_new'
                sh 'cat archive_new/test.txt'
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
