FROM eclipse-temurin:17.0.7_7-jre
EXPOSE 8080
ARG JAR_FILE=target/*.jar
RUN groupadd -r pipeline && useradd -S k8s-pipeline -g pipeline
COPY ${JAR_FILE} /home/k8s-pipeline/app.jar
USER k8s-pipeline
ENTRYPOINT ["java","-jar","/home/k8s-pipeline/app.jar"]
