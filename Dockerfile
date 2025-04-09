FROM maven:3.8.4-openjdk-11-slim AS build
#comment1
WORKDIR /app

COPY . /app.jar

ENV NAME World

EXPOSE 8070

ENTRYPOINT exec java -jar app.jar
