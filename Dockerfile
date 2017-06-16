FROM openjdk:8-jre-alpine

MAINTAINER Ivan Suftin <isuftin@usgs.gov>

ADD dropwizard.jar /dropwizard.jar
ADD config.yml /config.yml

EXPOSE 8080 8443 8081 8444 2003

ENTRYPOINT ["java", "-jar", "/dropwizard-rest-stub.jar", "server", "/config.yml"]
