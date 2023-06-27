FROM openjdk:17-jdk-alpine
EXPOSE 8180
ARG JAR_FILE=*.jar
RUN groupadd -r pipeline && useradd --no-log-init -r -g pipeline k8s-pipeline
COPY ${JAR_FILE} /home/k8s-pipeline/app.jar
USER k8s-pipeline
ENTRYPOINT ["java","-jar","/home/k8s-pipeline/app.jar"]
