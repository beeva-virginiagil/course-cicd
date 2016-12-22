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
    sh "aws s3 cp s3://clase-gendevops2-cicd-ci/simplehttpserver${env.BUILD_ID}.tar.gz /tmp/"
    sh "mkdir /opt/${env.BUILD_ID}"
    sh "mkdir -p /tmp/simplehttpserver/${env.BUILD_ID}"
    sh "tar -zxvf /tmp/simplehttpserver${env.BUILD_ID}.tar.gz -C /tmp/simplehttpserver/${env.BUILD_ID}/"
    sh "mv /tmp/simplehttpserver/${env.BUILD_ID}/* /opt/${env.BUILD_ID}/"
    sh "rm -rf /opt/${env.BUILD_ID}/tests"
  }

  stage('Functional tests') {
    sh 'echo testing'
  }
}
