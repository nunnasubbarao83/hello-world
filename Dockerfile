# Pull base image 
From tomcat

# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./SampleWebApp.war /usr/local/tomcat/webapps
