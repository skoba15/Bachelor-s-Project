FROM maven:3.3-jdk-8

COPY . /nb_server
WORKDIR /nb_server

RUN mvn clean package


ENV PORT 8081
CMD java -jar server/target/server-1.0-SNAPSHOT-jar-with-dependencies.jar ${PORT}