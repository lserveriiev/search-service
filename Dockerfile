FROM adoptopenjdk/openjdk11:alpine-jre

WORKDIR /opt/app

COPY target/search-*.jar search-app.jar

ENTRYPOINT [ "java", "-jar", "-Dspring.profile.active=docker", "search-app.jar"]
