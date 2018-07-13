FROM java:8

ENV PORT 8080

EXPOSE 8080

RUN mkdir /app

COPY /root/.m2/repository/tech/mahindra/0.0.1-SNAPSHOT/mahindra-0.0.1-SNAPSHOT.jar /app/mahindra.jar

WORKDIR /app

RUN chmod +x /app/mahindra.jar

ENTRYPOINT ["java","-jar","/app/mahindra.jar"]

