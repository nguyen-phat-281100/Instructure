pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                    git 'https://github.com/nguyen-phat-281100/Instructure'
                  }  
            }
        // stage('Create Artifact') {
        //     steps {
        //         // Archive the built artifact
        //         archiveArtifacts artifacts: 'target/*.jar', allowEmptyArchive: true
        //     }
        // }
    //     post {
    //     always {
    //         archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
    //         junit 'build/reports/**/*.xml'
    //     }
    // }
    }
}
