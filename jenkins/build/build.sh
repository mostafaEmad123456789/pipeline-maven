#!/bin/bash


WORKSPACE=/home/mostafa/jenkins-data/jenkins_home/workspace/pipleline-maven

#Copy the jar file
cp -f java-app/target/*.jar jenkins/build/ 
 

echo '*************Building the Docker Image***************'
cd $WORKSPACE/jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache 


