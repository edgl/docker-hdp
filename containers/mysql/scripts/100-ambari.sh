#!/bin/bash
set -e

cd /tmp
wget https://raw.githubusercontent.com/apache/ambari/branch-2.5/ambari-server/src/main/resources/Ambari-DDL-MySQL-CREATE.sql
sed -i "s/\${ambariSchemaVersion}/2.5.1/g" ./Ambari-DDL-MySQL-CREATE.sql

mysql -u root -ppassword < ./ambariConfig.sql
