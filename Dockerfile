FROM openjdk:8-jdk-alpine
ADD target/eurekaServer-0.0.1-SNAPSHOT.jar eureka.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka.jar"]