pipeline {
   agent any

	
   tools {nodejs "node"}

   stages {
      stage('Build') {
         steps {
            // Get some code from a GitHub repository
            git  'https://github.com/collabnix/testproject.git'
           
         }
      }
      stage('Run') {
	 steps {
       cd testproject  
	  sh startnode.sh
	       }
      }
      stage('Test') {
	 steps {
	    tpJobRun agentId: 'OeyCmOn4n6NEZJw2SgfZz9cBC0MzuUkPq1lhvIijNS81', jobId: 'EYQJ3tmcNkKqHhBOJ14P7w', projectId: 'ZUcm4zmEq0GrLCFEa2UgtQ', waitJobFinishSeconds: 30
            sh 'killall -9 node'

	 }
      }
   }
}
