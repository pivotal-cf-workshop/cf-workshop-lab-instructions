#Pivotal CF Workshop - Lab Instructions

##Java Module 6A 

###Goals
* Kill running instance of an application
* Verify application restart by the Health Manager

###Steps
1. Verify the application is running using the cf health CLI command:

	```
	> cf health
	
	cf-workshop-spring-mvc: running
	```

2. Navigate the application’s home page, and click the Kill button at the bottom of the page.  This will forcefully shut down the application:


 	<img src="img/J6A_1.png" width="500px"/> 

3. Monitor the application’s health using the cf health CLI command and verify that the application is restarted by the Health Manager:

	```
	> cf health
	cf-workshop-spring-mvc: 0%

	> cf health
	cf-workshop-spring-mvc: running
	```

4. Verify the application is running by viewing the home page again.  Note that the instance’s start time has changed:
  
  	<img src="img/J6A_2.png" width="500px"/> 


