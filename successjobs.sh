// Get the list of jobs that were SUCCESSFUL
// ------------------------------------------
 
// -- Get Active Jobs with 'Buildable' state
activeJobs = hudson.model.Hudson.instance.items.findAll{job -> job.isBuildable()}
 
// -- Get a subset of buildable jobs with result status of 'SUCCESSFUL'
goodRuns = activeJobs.findAll{job -> job.lastBuild != null && job.lastBuild.result == hudson.model.Result.SUCCESS}<!--nextpage-->
 
// Do something with them - e.g. listing them
goodRuns.each{run -> println "Successful Job Name: ${run.name}"}
