FROM jboss/wildfly:8.2.0.Final
MAINTAINER bmcustodio <bruno@brunomcustodio.com>

RUN curl -o /tmp/psql-jdbc.jar http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc41.jar
ADD config.sh /tmp/
ADD batch.cli /tmp/
RUN /tmp/config.sh
