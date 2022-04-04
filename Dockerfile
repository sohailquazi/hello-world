From tomcat:9-jre9 

COPY /var/lib/jenkins/.m2/repository/com/example/hello-world/1.0-SNAPSHOT/hello-world-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
