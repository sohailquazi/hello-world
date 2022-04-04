#From tomcat:9-jre9 

#COPY /home/ubuntu/hello-world/hello-world.war /usr/local/tomcat/webapps
#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/ubuntu/hello-world/src
COPY pom.xml /home/ubuntu/hello-world/pom.xml
RUN mvn -f /home/ubuntu/hello-world/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY /home/ubuntu/hello-world/hello-world.war /usr/local/lib/hello-world.war
EXPOSE 8090
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-world.war"]
