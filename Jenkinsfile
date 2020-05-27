pipeline {
   agent any

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
	    runtpjob jobId: 'VDwj_PAk20SkRaNTOxf9Og', projectId: '6m1LeGuoB0qPgwS05Ew4yA', waitJobFinishSeconds: 1800
            sh 'killall -9 node'

	 }
      }
   }
}
