FROM openjdk:11-jre-slim

COPY target/java11-examples-1.0-SNAPSHOT-jar-with-dependencies.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]

