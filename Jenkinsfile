pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }    
            }
        stage('Archive') {
            steps {
                // Archive artifacts
                archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
            }
        }
        
        stage('Publish') {
            steps {
                script {
                    // Copy artifact to a shared location (e.g., FTP, S3, etc.)
                    def artifactName = 'your-app.jar'
                    def destination = '/var/jenkins_home/workspace/Instructure'
                    
                    sh "cp **/*${artifactName} ${destination}"
                }
            }
        }
    }
}
