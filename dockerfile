FROM openjdk:17
RUN apt update -y && apt install maven -y
COPY application.properties Backend/FlightReservationApp/src/main/resources/application.properties
RUN mvn clean package
EXPOSE 8080
CMD java -jar target/flight*.jar
