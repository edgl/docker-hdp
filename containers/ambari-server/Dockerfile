FROM centos:6
ARG AMBARI_REPO_URL
RUN yum install -y wget sudo net-tools
RUN wget -nv ${AMBARI_REPO_URL} -O /etc/yum.repos.d/ambari.repo
RUN yum install -y ambari-server  krb5-workstation krb5-libs
RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.44.tar.gz && \
tar -xzf mysql-connector-java-5.1.44.tar.gz mysql-connector-java-5.1.44/mysql-connector-java-5.1.44-bin.jar && \
mkdir -p /usr/share/java && \
mv ./mysql-connector-java-5.1.44/mysql-connector-java-5.1.44-bin.jar /usr/share/java/mysql-connector-java.jar && \
rm -f mysql-connector-java-5.1.44.tar.gz
RUN ambari-server setup --database=mysql --databasehost=mysql.dev --databaseport=3306 --databasename=ambari --databaseusername=ambari --databasepassword=dev --silent
RUN ambari-server setup --jdbc-db mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar
ADD scripts/start.sh /start.sh
CMD /start.sh
