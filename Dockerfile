FROM tomcat:8.0-alpine

RUN rm -r /usr/local/tomcat/webapps/ROOT

ADD test-deployment.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
