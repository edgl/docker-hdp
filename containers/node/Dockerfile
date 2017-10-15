FROM centos:6
ARG AMBARI_REPO_URL
ARG HDP_REPO_URL
RUN yum install -y sudo wget openssl-devel postgresql-jdbc unzip
RUN wget -nv ${AMBARI_REPO_URL} -O /etc/yum.repos.d/ambari.repo
RUN wget -nv ${HDP_REPO_URL} -O /etc/yum.repos.d/hdp.repo
RUN yum install -y krb5-libs krb5-workstation
RUN yum install -y ambari-agent
RUN yum install -y hadoop*
RUN yum install -y zookeeper*
RUN yum install -y ranger*
RUN yum install -y superset*
RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.44.tar.gz && \
tar -xzf mysql-connector-java-5.1.44.tar.gz mysql-connector-java-5.1.44/mysql-connector-java-5.1.44-bin.jar && \
mkdir -p /usr/share/java && \
mv ./mysql-connector-java-5.1.44/mysql-connector-java-5.1.44-bin.jar /usr/share/java/mysql-connector-java.jar && \
rm -f mysql-connector-java-5.1.44.tar.gz
RUN yum install -y lzo snappy-devel rpcbind
RUN rm /etc/yum.repos.d/hdp*.repo
ADD scripts/start.sh /start.sh
CMD /start.sh
