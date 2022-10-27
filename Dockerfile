FROM openjdk:11-slim

RUN mkdir /opt/app

WORKDIR /opt/app

ADD ./target/example.smallest-0.0.1-SNAPSHOT.jar /opt/app/example.jar

EXPOSE 8080

ENTRYPOINT ["java" , "-jar" , "example.jar"]
