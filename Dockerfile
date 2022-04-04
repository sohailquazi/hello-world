From tomcat:8-jre8 

COPY /var/lib/jenkins/workspace/hcl-poc2/target/hello-world.war /usr/local/tomcat/webapps
