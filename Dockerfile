FROM openjdk:11.0-jre-slim
EXPOSE 8080
ADD target/*.jar /app.jar
ENTRYPOINT ["java","-Dspring.profiles.active=prod","-jar","/app.jar"]
