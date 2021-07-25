#!/bin/bash


echo "**********************************"
echo "*********Deploying Image**********"
echo "**********************************"

echo maven-project > /tmp/.auth 
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth prod_user@192.168.1.17:/tmp/.auth

scp -i /opt/prod ./jenkins/deploy/publish.sh prod_user@192.168.1.17:/tmp/publish.sh

ssh -i /opt/prod prod_user@192.168.1.17 "/tmp/publish.sh"
