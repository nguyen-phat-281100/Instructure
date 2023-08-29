pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }  
            }
        // ci
        stage('Checkout') {
            steps {
                def checkoutResult = checkout scm
                    echo "Checkout result: ${checkoutResult}"
            }
        }
        // build ci
        
        // cd
        stage('archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\artifact Instructure pipeline', followSymlinks: false, onlyIfSuccessful: true
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
