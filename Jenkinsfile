node('master') {
  stage('Checkout') {
    deleteDir()
    git credentialsId: 'ff247ceb-1af5-474d-8d2e-f20f4adb51d9', url: 'git@github.com:beeva-virginiagil/course-cicd.git'

  }
  stage('Test') {
    sh './simplehttpserver/tests/unittests.sh ./simplehttpserver/'
  }

  stage('Package and publish') {
    sh "tar -zcvf simplehttpserver-${env.JO_NAME}-${env.BUILD_ID}.tar.gz ./simplehttpserver"
    sh "aws s3 cp simplehttpserver-${env.JOB_NAME}-${env.BUIL_ID}.tar.gz s3://clase-gendevops2-cicd-ci/"
  }

}

