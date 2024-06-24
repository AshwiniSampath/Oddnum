pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                    echo "This is a build step"
                    sleep 5
                '''
            }
        }
        
        stage('Test') {
            agent {
                label 'Slave'
            }
            steps {
                sh '''
                    echo "This is Test stage"
                    sleep 5
                '''
            }
        }
        
        stage('Deploy') {
            agent {
                label 'Slave'
            }
            steps {
                sh '''
                    echo "This is Deploy Stage"
                    sleep 5
                '''
            }
        }
    }
}
