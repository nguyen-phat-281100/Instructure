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
                archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
            }
        }
        stage('Publish') {
            steps {
                script {
                    // Copy artifact to a shared location (e.g., FTP, S3, etc.)
                    def artifactDir = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_NUMBER}/archive/"
                    def artifactName = 'your-app.jar'
                    def destination = '/path/to/shared/location/'
                    
                    sh "cp ${artifactDir}${artifactName} ${destination}${artifactName}"
                }
            }
        }
    }
}
