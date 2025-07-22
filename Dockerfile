FROM openjdk:11-jre-slim

WORKDIR /app

# Copy the fat jar (shaded jar) into the container
COPY target/java11-examples-1.0-SNAPSHOT-shaded.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

