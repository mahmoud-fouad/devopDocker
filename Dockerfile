FROM openjdk:8-jdk-alpine
ARG JAR_FILE=${env.GITHUB_WORKSPACE}/target/*.jar
RUN pwd && ls -l
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

