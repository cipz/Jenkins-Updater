#!/bin/bash

echo "Stopping the Jenkins instance"
sudo service jenkins stop;

echo "Creating jenkins.war.old";
sudo mv jenkins.war jenkins.war.old;

echo "Downloading new installation file"
sudo wget https://updates.jenkins-ci.org/latest/jenkins.war;

echo "Restarting Jenkins"
sudo service jenkins start;
