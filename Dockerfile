FROM jboss/wildfly:8.2.1.Final
MAINTAINER ijazfx <ijazfx@gmail.com>

USER root

RUN yum -y install java-1.8.0-openjdk.x86_64
RUN echo 2 | alternatives --config java

USER jboss

ADD driver/*.jar /tmp/
ADD add-users.sh /tmp/
RUN /tmp/add-users.sh

ADD config.sh /tmp/
ADD batch.cli /tmp/
RUN /tmp/config.sh

EXPOSE 8080 9990

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0"]
