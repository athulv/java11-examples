FROM openjdk:11-jre-slim
COPY app.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

