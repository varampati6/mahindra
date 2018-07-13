# Base Image
FROM tomcat
FROM java:8

# Maintainer
MAINTAINER ravindra

# Copy Deployment File (can use ADD as well in place of COPY)
COPY ./target/*.war /opt/tomcat/webapps/

RUN echo "Building Image, Bro!"

# Port Setup
EXPOSE 8080

# Create tomcat user
# RUN groupadd -r tomcat && \
#     useradd -g tomcat -d /opt/tomcat -s /sbin/nologin  -c "Tomcat user" tomcat && \
#  	  chown -R tomcat:tomcat /opt/tomcat && \
#	  chmod -R g+rw /opt/tomcat
# Recursively grant ownership of the directory /opt/tomcat, and all files and 

#subdirectories, to user root.
RUN chown -R root:root /opt/tomcat &&\
    chmod -R g+rw /opt/tomcat 
# USER tomcat
# Main Command
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
