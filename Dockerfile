FROM openjdk:11-jre-slim

WORKDIR /app

# Copy the shaded jar (which replaces the original jar as per your build log)
COPY target/java11-examples-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

