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
    stage('docker re-deploy'){
        sh 'sudo docker kill $(sudo docker ps -q --filter ancestor=test-site )'
    }
}
