FROM openjdk:8-jdk-alpine
ARG JAR_FILE=/home/runner/work/devopDocker/devopDocker/target/*.jar
RUN pwd && ls -l
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

