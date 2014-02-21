#Pivotal CF Workshop - Lab Instructions

##Java Module 6B 

###Goals
* Tail logs of running application
* Download log files
* View application events

###Steps
1. View the aggregated logs for the application:

	```
	> cf logs
	```
	Alternatively, redirect standard out to a file and open in a text viewer for easier reading:
	
	```
	> cf logs > cf-workshop-logs.txt && more cf-workshop-logs.txt
	```

2. Tail the stdout log file to view request processing:

	```
	> cf tail cf-workshop-spring-mvc /logs/stdout.log
	```

	Navigate to the web page and click Attendees, and then Home:

	<img src="img/J6B_1.png" width="500px"/> 

	View the tailed log:

	```
	#0  /logs/stdout.log  INFO : com.gopivotal.cf.workshop.web.CloudFoundryWorkshopController - Current date and time = [01/17/2014 4:01 AM], port = [64969].
	#0  /logs/stdout.log  INFO : com.gopivotal.cf.workshop.web.CloudFoundryWorkshopController - Current date and time = [01/17/2014 4:02 AM], port = [64969].
	```

3. Download the log files to your local filesystem for viewing / archiving:

	```
	> cf files cf-workshop-spring-mvc /logs/

	Getting file contents... OK
	env.log                                   1.1K
	staging_task.log                          799B
	stderr.log                                5.6K
	stdout.log                               14.3K

	> cf files cf-workshop-spring-mvc /logs/stdout.log
	```

	Alternatively, redirect standard out to a file and open in a text viewer for easier reading:

	```
	> cf files cf-workshop-spring-mvc /logs/stdout.log > stdout.log && more stdout.log
	```

4. View the failure events for the application:

	```
	> cf events

	Getting events for cf-workshop-spring-mvc... OK

	time                        instance index   description           exit status  
	2014-01-02T15:08:41+00:00   0                app instance exited   Failure (148)
	2014-01-02T15:09:01+00:00   0                app instance exited   Failure (148)
	2014-01-02T15:09:41+00:00   0                app instance exited   Failure (148)
	```
