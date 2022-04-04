From tomcat:9-jre9 

COPY /var/lib/jenkins/workspace/hcl-poc2/target/hello-world.war /usr/local/tomcat/webapps
