pipeline {
  agent any
  stages {
    stage('firststage') {
      steps {
        echo 'thefirststage'
        echo "${JAVA_HOME}"
        
        when {
            branch 'master'
            
        }
      }
    }
    stage('second stage') {
      steps {
        echo 'the second stage'
      }
    }
    stage('third stage') {
      steps {
        echo 'the second stage'
      }
    }
  }
}
