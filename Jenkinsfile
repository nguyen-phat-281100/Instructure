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
                echo "password is '${dockerhub_pass}'"
                        bat '$t=${dockerhub_pass}'
                        bat '$t'
                      // sh "docker login -u '${DOCKER_USERNAME}' -p '${DOCKER_PASSWORD}'"
                      // bat 'docker login -u phatphuong0123 -p ${dockerhub_pass}'
                      // bat 'docker push phatphuong0123/instructure:ver4'
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
