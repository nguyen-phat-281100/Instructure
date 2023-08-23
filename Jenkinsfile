pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }    
            }
        stage('public artifact') {
             steps {
                   archiveArtifacts artifacts: '/var/jenkins_home/workspace/artifact/artifact.jar', followSymlinks: false
                }
            }
        }
    }

