pipeline {
   agent any

   stages {
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            git 'https://github.com/collabnix/testapp.git'
           
         }

      }
      stage('Run') {
	 steps {

	    sh "node index.js &"

	 }
      }
      stage('Test') {
	 steps {
	    tpJobRun agentId: 'ph3CXXXXXXXX', jobId: 'o7wS4nXXXXXXX', projectId: 'DzkGyzxkMXXXXXXXX', waitJobFinishSeconds: 180
	    
	    sh "killall -9 node"

	 }
      }
   }
}
