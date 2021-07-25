#!/bin/bash


echo '*********************'
echo '*******Building******'
echo '*********************'

WORKSPACE=/home/mostafa/jenkins-data/jenkins_home/workspace/pipleline-maven

docker run --rm -v $WORKSPACE/java-app:/app -w /app -v /root/.m2/:/root/.m2/ maven:3.5-jdk-8 "$@"
