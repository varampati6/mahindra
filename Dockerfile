FROM tomcat
ADD ./target/*.war /opt/tomcat/webapps/
CMD ["catalina.sh", "run"]