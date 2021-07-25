#!/bin/bash



#Copy the jar file
cp -f java-app/target/*.jar jenkins/build/ 
 

echo '*************Building the Docker Image***************'
cd /jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache 


