# Use OpenJDK 11 as base image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the built jar from target folder to the container
COPY target/java11-examples-1.0-SNAPSHOT.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
