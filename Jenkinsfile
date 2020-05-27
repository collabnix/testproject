pipeline {
   agent any

   stages {
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            git 'https://github.com/collabnix/testproject.git'
           
         }

      }
      stage('Run') {
	 steps {

	    sh "node index.js &"
	       }
      }
      stage('Test') {
	 steps {
	    tpJobRun jobId: 'L44sK8IdsUm9forOzzckRQ', projectId: '2cD87GRQvEOoGbOysstnuQ', waitJobFinishSeconds: 1800
	    
	    sh "killall -9 node"

	 }
      }
   }
}
