FROM openjdk:15-jdk-alpine
LABEL maintainer="author@javatodev.com"
VOLUME /main-app
ADD build/libs/spring-boot-mongodb-base-project-0.0.1-SNAPSHOT.jar app.jar
ADD newrelic /newrelic
EXPOSE 8080
# Expose port 5005 for Java remote debugger
EXPOSE 5005
ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005
ENTRYPOINT ["java", "-javaagent:/newrelic/newrelic.jar", "-jar","/app.jar"]