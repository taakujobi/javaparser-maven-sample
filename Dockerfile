

FROM openjdk:8u151-jdk-alpine3.7

EXPOSE 8070

ENV APP_HOME /usr/src/app
# Copy the built JAR file from the previous stage to the container
COPY - from=build . target/javaparser-maven-sample-1.0-SNAPSHOT.jar /app ./

WORKDIR $APP_HOME
# Set the command to run the application
ENTRYPOINT exec java -jar app.jar