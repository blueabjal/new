node {
    stage('scm'){
       git 'https://github.com/blueabjal/new.git'
    }
    stage('build') {
        sh 'clean install'
    }
}
