node('master') {
  stage 'Test'
  sh 'echo Unit test'
  sh './simplehttpserver/tests/unittests.sh .'

  stage 'Build'
  sh 'echo building'

  stage 'Test'
  sh 'echo testing'
}
