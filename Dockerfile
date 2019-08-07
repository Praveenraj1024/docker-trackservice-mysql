FROM openjdk:11
WORKDIR usr/src
ENV MYSQL_DATABASE=track_service
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=password
ENV MYSQL_CI_URL=jdbc:mysql://127.0.0.1:6600/track_service
ADD target/track-service-0.0.1-SNAPSHOT.jar /usr/src/track-service-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","/usr/src/track-service-0.0.1-SNAPSHOT.jar" ]