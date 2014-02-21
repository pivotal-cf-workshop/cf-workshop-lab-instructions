#Pivotal CF Workshop - Lab Instructions

##Java Module 5B 

###Goals
* Deploy application
* Map a new URL Subdomain to the application

###Steps
1. Get information about deployed app using CLI command

	```
	> cf apps
	```

	If the sample application is not deployed complete the steps in Java Lab 4A to do so.

	Note the deployed application name.

2. Map a new URL to the application 

	```
	> cf map --app <<app_name>> --domain cfapps.io --host <<app_name>>-new-CFW
	```
	Where \<\<app_name>> is the app name recorded in step 1.  

3. Verify the new URL route was created in the space

	```
	> cf routes
	```

	You should see the new host domain combination listed

4. Open a browser and navigate to the application using the new URL route.

5. Unmap the new URL to the application 

	```
	> cf unmap --app <<app_name>> --url <<app_name>>-new.cfapps.io
	```
	Where \<\<app_name>> is the app name recorded in step 1.  

6. List the routes for the space

	```
	> cf routes
	```

	You should see the route still exists. This is because while we have unmapped the route we have not deleted the route, so it is reserved for our future use.

7. Attempt to map a route to a reserved URL 

	```
	> cf map --app <<app_name>> --domain cfapps.io --host cfworkshop-reserved
	```

	You will see this fails as this has already been reserved.

8. Delete the route (this will also unmap) 

	```
	> cf delete-route <<new_route>>-new -cfapps.io
	```

	When prompted confirm you want to delete the route.  
	(This would also unmap the URL from any apps it has been mapped to)

9. Verify the route has been deleted

	```
	> cf routes
	```

	You will now not see the route in the list.
