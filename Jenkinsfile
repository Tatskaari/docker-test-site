node {
    stage('Preparation') { // for display purposes
        git 'https://github.com/Tatskaari/docker-test-site.git'
        def nodeHome = tool name: 'nodejs'
        env.PATH = "${nodeHome}/bin:${env.PATH}"
    }
    stage('npm install') {
        sh 'npm install'
    }
    stage('docker build') {
        sh 'sudo docker build -t test-site .'
    }   
}
