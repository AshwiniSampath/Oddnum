pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                    echo "This is Build stage"
                '''
            }
        }
        
        stage('Parallel Test') {
            parallel {
                stage('Test1') {
                    steps {
                        sh '''
                            echo "Test Stage 1"
                        '''
                    }
                }
                stage('Test2') {
                    steps {
                        sh '''
                            echo "Test Stage 2"
                        '''
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                sh '''
                    cp sudo cp /var/lib/jenkins/workspace/pipeline2/target/hello-1.0.war /usr/tomcat/tomcat10/webapps

                '''
            }
        }
    }
}
