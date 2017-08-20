services{
	college_app_tracker {
		job_name = 'college-app-tracker'
		git_url = 'https://github.com/erwindev/college-app-tracker.git'	
	    branches=['master':'prod']		
	    jenkins_dsl_file='Jenkinsfile'	
	}
	college_app_tracker_ui {
		job_name = 'college-app-tracker-ui'
		git_url = 'https://github.com/erwindev/college-app-tracker-ui.git'	
	    branches=['master':'prod']		
	    jenkins_dsl_file='Jenkinsfile'	
	}	
	college_app_tracker_docker {
		job_name = 'college-app-tracker-docker'
		git_url = 'https://github.com/erwindev/college-app-tracker-docker.git'	
	    branches=['master':'prod']		
	    jenkins_dsl_file='Jenkinsfile'	
	}		
}