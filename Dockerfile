FROM centos
RUN yum install java -y
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.14/bin/apache-tomcat-10.0.14.tar.gz /opt/tomcat
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.0.14/* /opt/tomcat 
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
