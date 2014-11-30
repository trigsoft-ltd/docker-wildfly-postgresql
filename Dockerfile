FROM jboss/wildfly:8.2.0.Final
MAINTAINER bmcustodio <bruno@brunomcustodio.com>

ENV DST /tmp
WORKDIR $DST

RUN curl -O http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc41.jar
ADD config.sh $DST/
ADD batch.cli $DST/
RUN $DST/config.sh
