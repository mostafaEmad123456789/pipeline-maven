#!/bin/bash


echo '*********************'
echo '*******Building******'
echo '*********************'

docker run --rm -v $PWD/java-app:/app -w /app -v /root/.m2/:/root/.m2/ maven:3.5-jdk-8 "$@"
