FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY ./hello-world.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]