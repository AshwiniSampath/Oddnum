pipeline {
    agent {
        label 'Slave'
    }
    
    stages {
        stage('Build') {
            steps {
                sh '''
                    /home/ec2-user/boxfuse-sample-java-war-hello/mvn clean install
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
