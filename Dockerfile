FROM openjdk:8u151-jdk-alpine3.7
#comment
EXPOSE 8070

ENV APP_HOME

COPY . /app

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar
