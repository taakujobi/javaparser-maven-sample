FROM openjdk:8u151-jdk-alpine3.7

WORKDIR /app

COPY ./app

EXPOSE 8070

ENV APP_HOME /usr/src/app

ENTRYPOINT exec java -jar app.jar
