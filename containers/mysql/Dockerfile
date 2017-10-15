FROM mysql:5.6
RUN apt-get update -y
RUN apt-get install -y wget
ARG AMBARI_DDL_URL
ADD sql/* /tmp/
ADD scripts/* /docker-entrypoint-initdb.d/
