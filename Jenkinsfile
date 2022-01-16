pipeline {
  agent any
  stages {
        stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t demo_tomcat .'
        sh 'docker run -d -it --name demo -p 8083:8080 demo_tomcat'
      }
    }
  }
}
