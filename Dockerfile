FROM ubuntu:latest
MAINTAINER shreyas
RUN apt-get update -y && apt-get upgrade -y && apt-get install openjdk-8-jdk -y 
WORKDIR /sk
COPY /target/spring-boot-rest-example-0.5.0.war /sk
EXPOSE 8091
EXPOSE 8090
CMD java -jar -Dspring.profiles.active=test /target/spring-boot-rest-example-0.5.0.war
