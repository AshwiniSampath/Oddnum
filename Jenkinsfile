pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                    mvn clean install
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
                    echo "This is Deploy stage"
                '''
            }
        }
    }
}
