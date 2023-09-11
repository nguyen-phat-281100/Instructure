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
                      // sh "docker login -u '${DOCKER_USERNAME}' -p '${dockerhub_pass}'"
                      bat "docker login -u '${dockerhub_user}' -p '${dockerhub_pass}' --password-stdin"
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
