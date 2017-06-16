FROM openjdk:8-jre-alpine

MAINTAINER Ivan Suftin <isuftin@usgs.gov>

ENV VERSION SNAPSHOT
COPY dropwizard-example.jar /dropwizard.jar
COPY config.yml /config.yml

EXPOSE 8080 8443 8081 8444 2003

ENTRYPOINT ["java", "-jar", "/dropwizard.jar", "server", "/config.yml"]
