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
          sh "docker login -u abjal -p abjal12345"
      sh 'docker push abjal/app:2.0'
    }
}
