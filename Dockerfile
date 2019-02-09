FROM digitalgenius/alpine-jdk
ADD . /code
WORKDIR /code
RUN ./gradlew bootJar
CMD ["java", "-jar", "./build/libs/ServiceRegistry-0.0.1-SNAPSHOT.jar"]