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

	    sh 'node index.js &'
	       }
      }
      stage('Test') {
	 steps {
	    runtpJob jobId: 'VDwj_PAk20SkRaNTOxf9Og', projectId: '6m1LeGuoB0qPgwS05Ew4yA', waitJobFinishSeconds: 1800
	    
	    sh 'killall -9 node'

	 }
      }
   }
}
