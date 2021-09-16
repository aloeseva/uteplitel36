FROM adoptopenjdk/openjdk8:alpine-jre
EXPOSE 9000
ADD target/uteplitel36-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]