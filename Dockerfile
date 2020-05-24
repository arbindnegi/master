# For Java 8, try this
 FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8080

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-docker.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-docker.jar /opt/app/spring-boot-docker.jar
COPY ${JAR_FILE} spring-boot-docker.jar

# java -jar /opt/app/spring-boot-docker.jar
ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]

## sudo docker run -p 8080:8080 -t spring-boot-docker
## sudo docker run -p 80:8080 -t spring-boot-docker
## sudo docker run -p 443:8443 -t spring-boot-docker
##http://192.168.99.100:8080/#