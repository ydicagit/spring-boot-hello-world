FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/spring-boot-hello-world-1.0-SNAPSHOT.jar spring-boot-hello-world.jar
RUN sh -c 'touch /spring-boot-hello-world.jar'

ENTRYPOINT ["java", "-jar","/spring-boot-hello-world.jar"]
