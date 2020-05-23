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
	    tpJobRun jobId: '4izA0I6pF0-LHz_MJi1gSQ', projectId: '10r7tS-ZDUO1q_hFNuyDng', waitJobFinishSeconds: 1800
	    
	    sh "killall -9 node"

	 }
      }
   }
}
