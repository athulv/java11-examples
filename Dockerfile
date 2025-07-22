FROM openjdk:11-jre-slim
COPY target/java11-examples-1.0-SNAPSHOT.jar /app/java11-examples.jar
ENTRYPOINT ["java", "-jar", "/app/java11-examples.jar"]
