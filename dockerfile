FROM openjdk:11
EXPOSE 8081

##Copy jarfile to image##

COPY target/spring-petclinic-2.7.0-SNAPSHOT.jar /usr/bin/petclinic.jar

## Run app ##

ENTRYPOINT ["java","-jar","/usr/bin/petclinic.jar","--server.port=8081"]
