pipeline {
    agent any
    stages {
        stage ('artifact') {
            //  agent {
            //      node {
            //         label 'node2' 
            //     }
            // }
            steps {
                // script {
                //     build job: 'Instructure pipeline', parameters: [[$class: 'node2', name: 'node', label: 'node2']]
                //        }
                 archiveArtifacts artifacts: 'jsonfile.json', followSymlinks: false
            }
        }

        stage('Docker build') {
            steps {
              script{
                  withCredentials([usernamePassword(credentialsId: 'dockerhub_pwd', passwordVariable: 'dockerhub_pass', usernameVariable: 'dockerhub_user')]) {
                echo "password is ${dockerhub_pass}"
                      bat 'docker build -t instructure .'
                  }
              }
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
