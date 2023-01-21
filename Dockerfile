FROM openjdk:8-jdk-alpine
RUN pwd
ARG JAR_FILE=${GITHUB_WORKSPACE}/target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

