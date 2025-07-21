# Use OpenJDK 11 slim as the base image
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the jar file (Assumes the Maven build creates target/java11-examples-1.0-SNAPSHOT.jar)
COPY target/java11-examples-1.0-SNAPSHOT.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]

