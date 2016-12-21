node('master') {
  stage('Checkout') {
    git credentialsId: '10b2c3b8-4a2c-476f-ac57-cb3266e1680a', url: 'git@github.com:beeva/course-cicd.git'
  }

  stage('Test') {
    sh 'env | sort'
    sh 'echo Unit test'
    sh 'pwd'
    sh 'ls -l'
    sh './simplehttpserver/tests/unittests.sh .'
  }

  stage('Build') {
    sh 'echo building'
  }

  stage('Test') {
    sh 'echo testing'
  }
}
