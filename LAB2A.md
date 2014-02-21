#Pivotal CF Workshop - Lab Instructions

##Java Module 2A 

###Goals
* Get Sample Application Source Code
* Build Sample Application
* Target Cloud Foundry instance
* Login to through CLI
* Push application using CLI prompts
* Generate manifest from push process
* Access deployed application

###Steps
1. From command prompt clone the workshop sample application from 
 
  https://github.com/pivotal-cf-workshop/cf-workshop-spring-mvc.git

  ```
  > git clone https://github.com/pivotal-cf-workshop/cf-workshop-spring-mvc.git
  ```

2. Switch to the cf-workshop-spring-mvc directory and build the application using Apache Maven.

  ```
  > mvn clean package 
  ```
  
3. Using the CLI - Target the public Pivotal CF instance running at api.run.pivotal.io

  ```
  > cf target api.run.pivotal.io
  ```

4. Using the CLI login to using the user name and password for your cloud foundry account

  ```
  > cf login
  ```

  Follow prompts to supply user name and password 

5. Execute the CLI target command  to see the details of the org and space you are logged into

  ```
  > cf target
  ```

6. Using the CLI push the built application

  ```
  > cf push --path target/cf-workshop-lab3-0.1.war
  ```

  Complete prompts as follows:
  Application name - \<\<first_initial>>\<\<last_name>>-CFW (replace \<\<first_initial>>\<\<last_name>> with your first inital and last name e.g “ssmith-CFW”)
  
  Instances - 1
  
  Memory - 512M
  
  Subdomain - accept default application name
  
  Domain - accept default cfapps.io
  
  Create services for application - n
  
  Save configuration - y

7. After application deploys and starts open a browser and navigate to the application.  The path to the application is supplied in a message similar to the following:

  ```
  Push successful! App 'ssmith-CFW' available at ssmith-CFW.cfapps.io
  ```
  
  <img src="img/J2A_1.png" width="500px"/> 


