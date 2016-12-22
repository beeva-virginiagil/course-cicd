node('master') {
  stage('Checkout') {
    deleteDir()
    git credentialsId: 'ff247ceb-1af5-474d-8d2e-f20f4adb51d9', url: 'git@github.com:beeva-virginiagil/course-cicd.git'
  }
}

