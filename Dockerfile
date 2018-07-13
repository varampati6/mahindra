FROM java:8

ENV PORT 8080

EXPOSE 8080

RUN mkdir /app

COPY /root/.jenkins/workspace/TechMahindra/target/mahindra.jar /app/mahindra.jar

WORKDIR /app

RUN chmod +x /app/mahindra.jar

ENTRYPOINT ["java","-jar","/app/mahindra.jar"]

