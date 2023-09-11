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
                 archiveArtifacts artifacts: 'jsonfile.json', followSymlinks: false
            }
        }

        // stage('Docker build') {
        //     steps {
        //       script{
        //               bat 'docker build -t instructure .'
        //               bat 'docker image tag instructure phatphuong0123/instructure:ver4'
        //       }
        //     }
        // }
        stage('Docker push image into Dockerhub') {
            steps {
              script{
                  withCredentials([usernamePassword(credentialsId: 'dockerhub_pwd', passwordVariable: 'dockerhub_pass', usernameVariable: 'dockerhub_user')]) {
                    bat 'echo "'${dockerhub_pass}'" | docker login -u '${dockerhub_user}' --password-stdin'
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
