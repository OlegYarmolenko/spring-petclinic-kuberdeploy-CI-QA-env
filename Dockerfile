FROM openjdk:8-jdk-alpine
COPY ./target/spring-petclinic-2.5.0-SNAPSHOT.jar spring-petclinic-2.5.0-SNAPSHOT.jar
CMD ["java", "-jar", "spring-petclinic-2.5.0-SNAPSHOT.jar", "--server.port=8080"]
