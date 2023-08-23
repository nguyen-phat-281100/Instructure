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
                   archiveArtifacts artifacts: 'build/**', followSymlinks: false
                }
            }
        }
    }

