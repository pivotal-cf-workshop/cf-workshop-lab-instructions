#Pivotal CF Workshop - Lab Instructions

##Java Module 2B

###Goals
* Get information on deployed application
* Stop the deployed application
* Delete the deployed application

###Steps
1. Get information about the currently deployed application using CLI apps command

	`> cf apps`

	Note the application name for next steps App Name: ______________

2. Get information about running instances using CLI instances command

	`> cf instances <<app_name>>` (Substitute app name recorded in step one.)

3. Get memory, CPU and other statistics about running instances using CLI stats command

	`> cf stats <<app_name>>` (Substitute app name recorded in step one.)

4. Stop the deployed application using the CLI

	`> cf stop <<app_name>>` (Substitute app name recorded in step one.)

5. Delete the deployed application using the CLI

	`> cf delete <<app_name>>` (Substitute app name recorded in step one.)

	When prompted verify delete action.



