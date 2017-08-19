services{
	college_app_tracker {
		job_name = 'college-app-tracker'
		git_url = 'https://github.com/erwindev/college-app-tracker.git'	
	    branches=['master':'prod']		
	    jenkins_dsl_file='Jenkinsfile'	
	}
}