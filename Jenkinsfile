pipeline {
    agent any
    
    stages {
        stage ('push artifact') {
            steps {
                 archiveArtifacts artifacts: '**/*.json', followSymlinks: false
            }
        }

        // stage('pull artifact') {
        //     steps {
        //         copyArtifacts filter: 'jsonfile.json', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
        //         unzip zipFile: 'test.zip', dir: './archive_new'
        //         sh 'cat archive_new/test.txt'
        //     }
        // }

        stage('Deploy') {
            steps {
                // Download the archived artifact
                step([$class: 'CopyArtifact', 
                      projectName: 'Instructure pipeline', 
                      filter: '*.json', target: 'artifacts'])
                
                // Read and print the content of the JSON file
                // script {
                //     def jsonFilePath = findFiles(glob: 'artifacts/*.json')[0]
                //     def jsonContent = readFile(jsonFilePath.path)
                //     echo "JSON Content:\n${jsonContent}"
                // }
                
                // Add your deployment steps here
                // For example, deploying the JSON content to a service
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
