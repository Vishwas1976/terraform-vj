pipeline {
  agent any
  environment {
      cc = 'newEnvValue'
  }
  stages {
    stage('firststage') {
      steps {
        echo 'thefirststage'
        echo "${JAVA_HOME}"


        
        when {
            branch 'notmaster'
           



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