FROM openjdk:17-jdk-alpine

RUN apk add --no-cache maven

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package

COPY target/helloworld-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]