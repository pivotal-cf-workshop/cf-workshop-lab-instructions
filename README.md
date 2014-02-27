cf-workshop-lab-instructions
============================

#Lab Instructions for Pivotal CF Labs

##Introduction
This repository contains the markdown of the labs instructions for the Pivotal CF Workshop, and also builds a Java webapp containing the HTML generated output.

In order to generate the HTML pages from the markdown, you must install the markdown-page-generator-plugin Maven plugin into your local repository.  Thanks to (#walokra)[https://github.com/walokra] for the Maven plugin for MD -> HTML generation.

##Building and Deploying
To build the webapp and deploy it to PCF / PWS:

* Clone the MD generator Maven plugin repository: 
`git clone https://github.com/pivotal-cf-workshop/markdown-page-generator-plugin`
* Install the Maven plugin locally:
`cd markdown-page-generator-plugin`
`mvn clean install`
* Build the lab instructions webapp:
`cd ../cf-workshop-lab-instructions`
`mvn clean package`
* Deploy the webapp to PCF / PWS:
`cf push`

