pipeline {
  agent any
  stages {
    stage('firststage') {
      steps {
        echo 'thefirststage'
        echo "${JAVA_HOME}"
        withEnv(overrides: JAVA_HOME)
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