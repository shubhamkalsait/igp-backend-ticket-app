FROM java:17
COPY target/flightreservationApplication-0.0.1-SNAPSHOT.jar flightreservationApplication-0.0.1-SNAPSHOT.jar
ENV DATASOURCE_URL=
ENV DATASOURCE_PASSWORD=
ENV DATASOURCE_USER=
ENV FRONTEND_URL= 
EXPOSE 8080
CMD java -jar flightreservationApplication-0.0.1-SNAPSHOT.jar


