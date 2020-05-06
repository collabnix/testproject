pipeline {
   agent any

   stages {
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            git 'https://github.com/mhumair/testapp.git'
           
         }

      }
      stage('Run') {
	 steps {

	    sh "node index.js &"

	 }
      }
      stage('Test') {
	 steps {
	    tpJobRun agentId: 'ph3CBxbUPUqe3QiotEWmWA', jobId: 'o7wS4nJc6Em3PEz_yqZErw', projectId: 'DzkGyzxkM0GLy799JBllVQ', waitJobFinishSeconds: 180
	    
	    sh "killall -9 node"

	 }
      }
   }
}
