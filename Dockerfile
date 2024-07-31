FROM bellsoft/liberica-openjdk-alpine:17

CMD ["./mvnw", "clean", "package"]

VOLUME /tmp

ARG JAR_FILE_PATH=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]