pipeline {
  agent any
  stages {
        stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t shanem/spring-petclinic .'
        sh 'docker run -d name demo -p 8083:8080 shanem/spring-petclinic'
      }
    }
  }
}
