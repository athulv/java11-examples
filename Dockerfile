# Stage 1: Compile Java app with dependencies using Maven + Shade
FROM maven:3.8.5-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the shaded JAR using JRE-slim
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/java11-examples-1.0-SNAPSHOT-jar-with-dependencies.jar java11-examples.jar
ENTRYPOINT ["java", "-jar", "java11-examples.jar"]
