pipeline {
    agent any
    stages {
        stage ('Checking java version') {
            steps {
                    sh 'java -version'
            }
        }
        stage ('maven version') {
            steps {               
                    sh 'mvn -version'                
            }
        }
        stage ('build app test') {
            steps {               
                    sh 'mvn clean install -DskipTests=true '                                    
            }
        }
        
       
          }
          
        }
