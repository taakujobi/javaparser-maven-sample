FROM openjdk:8u151-jdk-alpine3.7

WORKDIR /app

COPY javaparser-maven-sample-1.0-SNAPSHOT.jar /app

EXPOSE 8070

COPY . /app

ENTRYPOINT exec java -jar app.jar
