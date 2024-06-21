pipeline {
    agent {
        label 'Slave'
    }
    
    stages {
        stage('Build') {
            steps {
                sh '''
                    mvn clean install
                    sleep 5
                '''
            }
        }
        
        stage('Test') {
            steps {
                sh '''
                    echo "This is Test stage"
                    sleep 5
                '''
            }
        }
        
        stage('Deploy') {
            steps {
                sh '''
                    echo "This is Deploy Stage"
                    sleep 5
                '''
            }
        }
    }
}
