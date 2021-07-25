#!/bin/bash


IMAGE="maven-project"

echo "*************************"
echo "*****Pushing Image*******"
echo "*************************"

echo "*******Tagging Image*****"

docker login -u mostafaemad18697 -p $PASS

docker tag $IMAGE:$BUILD_TAG mostafaemad18697/$IMAGE:$BUILD_TAG

docker push mostafaemad18697/$IMAGE:$BUILD_TAG
 
