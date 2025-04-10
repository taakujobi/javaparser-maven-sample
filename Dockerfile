

# Use an official Maven image as the base image
FROM maven:3.8.4-openjdk-11-slim AS build
# Set the working directory in the container
WORKDIR /app
# Copy the pom.xml and the project files to the container
COPY pom.xml .
COPY src ./src
# Build the application using Maven
RUN mvn -B package --file pom.xml
# Use an official OpenJDK image as the base image
FROM openjdk:11-jre-slim
# Copy the built JAR file from the previous stage to the container
COPY - from=build . target/javaparser-maven-sample-1.0-SNAPSHOT.jar /app ./
# Set the command to run the application
CMD ["java", "-jar", "app.jar"]