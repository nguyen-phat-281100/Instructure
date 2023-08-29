pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }  
            }
        // ci
        // build ci
        
        // cd
        stage('archive Artifacts') {
            steps {
                checkout scm
                echo "*************archive Artifacts***************"
                archiveArtifacts artifacts: 'C:/ProgramData/Jenkins/.jenkins/workspace/artifact Instructure pipeline/*.jar', followSymlinks: false
            }
        }
    }
    
    post {
        success {
            echo 'CI/CD pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD pipeline failed!'
        }
    }
}
