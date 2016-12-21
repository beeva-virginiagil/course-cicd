node('master') {
  stage('Checkout') {
    deleteDir()
    git credentialsId: '10b2c3b8-4a2c-476f-ac57-cb3266e1680a', url: 'git@github.com:beeva/course-cicd.git'
  }

  stage('Test') {
    sh './simplehttpserver/tests/unittests.sh ./simplehttpserver/'
  }

  stage('Package and publish') {
    sh "tar -zcvf simplehttpserver${env.BUILD_ID}.tar.gz ./simplehttpserver"
    sh "aws s3 cp simplehttpserver${env.BUILD_ID}.tar.gz s3://clase-gendevops2-cicd-ci/"
  }

  stage('Deploy') {
    sh 'echo testing'
  }

  stage('Functional tests') {
    sh 'echo testing'
  }
}
