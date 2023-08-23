pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }    
            }
        stage('Clone Repository') {
             steps {
                   archiveArtifacts artifacts: '', followSymlinks: false
                }
            }
        }
    }

