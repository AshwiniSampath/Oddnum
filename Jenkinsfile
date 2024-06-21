pipeline {
    agent {
        label 'SlaveNew'
    }
    
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
                script {
                    def warFile = findFiles(glob: 'target/*.war').get(0)
                    if (warFile != null) {
                        sh "cp ${warFile} /home/ec2-user/boxfuse-sample-java-war-hello/targethello-1.0.war"
                    } else {
                        error "War file not found in target directory"
                    }
                }
            }
        }
    }
}
