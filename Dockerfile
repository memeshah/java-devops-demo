FROM openjdk:11
COPY target/hello-world-1.0-SNAPSHOT.jar /app/hello-world.jar
CMD ["java", "-jar", "/app/hello-world.jar"]