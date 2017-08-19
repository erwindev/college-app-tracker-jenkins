def slurper = new ConfigSlurper()

slurper.classLoader = this.class.classLoader
def global = slurper.parse(readFileFromWorkspace('pipeline/global_param.dsl'))
def config = slurper.parse(readFileFromWorkspace('pipeline/services.dsl'))

// create job for every service
config.services.each { name, data ->
  createBuildJob(data, global)
}

def createBuildJob(data, global_config){
	pipelineJob("${data.job_name}"){
	    definition {
	        cpsScm {
	            scm {
	              git{
	                remote{
	                  url(data.git_url)
		              credentials(global_config.github_credential_id)
	                }
			        data.branches.each{
			          branch("*/${it.key}")
			        }
	              }                
	            }
	          	scriptPath(data.jenkins_dsl_file)
	        }
	    }  
	}
}