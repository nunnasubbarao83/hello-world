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


pipeline {
  environment {
    registry = "22249292/first"
    registryCredential = 'dockerhub_id'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git branch: 'main', credentialsId: 'nunnasubbarao83', url: 'https://github.com/nunnasubbarao83/jenkins_pipeline.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
