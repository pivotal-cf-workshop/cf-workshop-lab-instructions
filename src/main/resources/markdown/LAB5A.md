#Pivotal CF Workshop - Lab Instructions

##Java Module 5A 

###Goals
* Scale deployed application to multiple instances
* Verify application scaling occurred

###Steps
1. Get information about deployed app using CLI command

	```
	> cf apps
	```


	Note the deployed application URL (should be \<\<first_initial>>\<\<last_name>>-CFW.cfapps.io with your first inital and last name e.g “ssmith-CFW.cfapps.io”)

2. Get information about the instances

	```
	> cf instances <<app_name>>
	``’ 

	Where \<\<app_name>> is the sample app name (e.g. ssmith-CFW)

	You should see only one instance.

3. Scale the application to 3 instances

	```
	> cf scale <<app_name>>
	```

	When prompted indicate 3 instances
	Select the default memory supplied (512M)

4. Verify that there are now 3 instances

	```
	> cf instances <<app_name>>
	```

	(Some of the instances may be starting repeat checking instances until all start)

5. Navigate to the app in the browser at http://\<\<first_initial>>\<\<last_name>>-CFW.cfapps.io and click the Kill button

  	<img src="img/J5A_1.png" width="500px"/> 

6. Reload the app Home Page http://\<\<first_initial>>\<\<last_name>>-CFW.cfapps.io

  	<img src="img/J5A_2.png" width="500px"/> 
	
	You will notice the application port and index have changed from prior load.
