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
        //           echo "Docker Registry URL: env.DOCKER_REGISTRY"
        //               bat 'docker build -t instructure .'
        //               bat 'docker image tag instructure phatphuong0123/instructure:ver4'
        //           // bat 'docker login -u phatphuong0123 -p Phatphuong0123'

        //       }
        //     }
        // }
        stage('Docker push image into Dockerhub') {
            steps {
              script{
                  withCredentials([usernamePassword(credentialsId: 'dockerhub_pwd', passwordVariable: 'dockerhub_pass', usernameVariable: 'dockerhub_user')]) {
                     // bat 'docker login -u '${dockerhub_user}' -p '${dockerhub_pass}''
                     // bat 'docker push phatphuong0123/instructure:ver4'
                      bat "user là '${dockerhub_user}'"

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
