FROM java:8
EXPOSE 8080
ADD ./target/mahindra.jar mahindra.jar
ENTRYPOINT ["java","-jar","mahindra.jar"]