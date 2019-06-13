node {
    stage('scm'){
       git 'https://github.com/blueabjal/new.git'
    }
    stage('build') {
        sh 'mvn clean install'
    }
    stage('build docker image') {
       sh 'docker build -t abjal/repo/app:1.0 .'
    }
    stage('push to docker hub') {
      withCredentials([usernameColonPassword(credentialsId: 'f8d26c1a-a055-4d50-9789-e66156b77076', variable: 'cred')]) {
          sh "docker login -u abjal -p ${cred}" 
      sh 'docker push abjal/repo/app:1.0'
    }
    } 
}
