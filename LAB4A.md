#Pivotal CF Workshop - Lab Instructions

##Java Module 4A 

###Goals
* Deploy Sample Application
* Access Environmental Variables Page

###Steps
1. Rename the manifest file “manifest.yml” to “new-manifest.yml” (note in linux the move command “mv” is used to rename files)
 
2. Using the CLI push the built application again using the new manifest file created above.

	```
	> cf push --manifest new-manifest.yml
	```


3. After application deploys and starts open a browser and navigate to the application.  The path to the application is supplied in a message similar to the following:

	```
	Push successful! App 'ssmith-CFW' available at ssmith-CFW.cfapps.io
	```

	*Notice the details environment variables*
	
	<img src="img/J4A_1.png" width="500px"/> 


