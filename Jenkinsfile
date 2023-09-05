pipeline {
    agent any
    
    stages {
        stage ('artifact') {
             agent {
                 node {
                    label 'node2' 
                }
            }
            steps {
                 archiveArtifacts artifacts: 'jsonfile.json', followSymlinks: false
            }
        }

        stage('Deploy') {
            agent {
                 node {
                    label 'node2' 
                }
            }
            steps {
              copyArtifacts filter: '**/jsonfile.json', 
                  fingerprintArtifacts: true, 
                  projectName: 'Instructure pipeline', 
                  selector: lastSuccessful(), 
                  target: 'C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\CD Instructure\\artifact'
                // script {
                //     bat 'dir'
                // }
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
