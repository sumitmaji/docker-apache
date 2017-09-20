#!/bin/bash
#sudo rm -r /home/master/projects/Home
echo "STARTING THE DOCKER APACHE2 SERVER CONTAINER!!"
#docker run -it -v /home/master/projects:/var/lib/tomcat6/webapps -p 8989:8080 --privileged=true -d sumit/demo
#docker run -it -d -p 8181:80 --link=tomcat1:node01.cloud.com --link=tomcat2:node02.cloud.com --name=webserver -h server sumit/apache

docker run -it -d -p 8181:80 -v /usr/local/repo/hdp:/var/www/html/repo sumit/apache
echo "PROCESS SUCCESSFUL!!!!!!!!!!!!!!!!!!!!!!!!"
