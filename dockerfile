FROM openjdk:17
COPY target/flightreservationApplication-0.0.1-SNAPSHOT.jar flightreservationApplication-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD java -jar flightreservationApplication-0.0.1-SNAPSHOT.jar

