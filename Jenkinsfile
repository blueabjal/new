node {
    stage('scm'){
       git 'https://github.com/blueabjal/new.git'
    }
    stage('build') {
        sh 'mvn clean install'
    }
    stage('build docker image') {
       sh 'docker build -t abjal/app:2.0 .'
    }
    stage('push to docker hub') {
      withCredentials([usernameColonPassword(credentialsId: 'pass', variable: 'cred')]) {
          sh "docker login hub.docker.com -u abjal -p $(cred)"  
      sh 'docker push abjal/repo/app:1.0'
    }
    } 
}
