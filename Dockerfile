FROM centos:latest
MAINTAINER shimib
RUN yum install -y mc
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y tomcat
RUN yum install -y which
RUN mkdir /logs
ENV NAME shimi
ADD http://52.29.97.136:8081/artifactory/libs-snapshot-local/org/springframework/samples/spring-petclinic-shimi7/1.1.0-SNAPSHOT/spring-petclinic-shimi7-1.1.0-20160602.114454-1.war /usr/share/tomcat/webapps
CMD tomcat start && tail -f /logs/catalina.out
