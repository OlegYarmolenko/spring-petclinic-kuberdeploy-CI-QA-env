FROM openjdk:8-jdk-alpine
COPY ./target/spring-petclinic-2.5.0-SNAPSHOT.jar spring-petclinic-2.5.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic-1.5.0-SNAPSHOT.jar", "--server.port=3000"]
