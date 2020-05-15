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
	    tpJobRun agentId: 'FsGPT3SjMkuZ3t6h5526jQ', jobId: 'l4BXimlJrE6AH75hs6NFIg', projectId: 'sqFLBQuIcEyY6kzEwpViwQ', waitJobFinishSeconds: 180
	    
	    sh "killall -9 node"

	 }
      }
   }
}
