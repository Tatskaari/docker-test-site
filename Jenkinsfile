node {
    stage('Preparation') { // for display purposes
        // Get some code from a GitHub repository
        git 'https://github.com/Tatskaari/docker-test-site.git'
        // Get the Maven tool.
        // ** NOTE: This 'M3' Maven tool must be configured
        // **       in the global configuration.           
        def nodeHome = tool name: 'nodejs'
        env.PATH = "${nodeHome}/bin:${env.PATH}"
    }
    stage('npm install') {
        sh 'npm install'
    }
    stage('docker build') {
        def dockerHome = tool name: 'docker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
        sh 'docker build -t test-site .'
    }   
}
