node('master') {
  stage 'Checkout'
  sh 'echo checking out'
  git credentialsId: '10b2c3b8-4a2c-476f-ac57-cb3266e1680a', url: 'git@github.com:beeva/course-cicd.git'

  stage 'Build'
  sh 'echo building'

  stage 'Test'
  sh 'echo testing'
}
