#!/bin/bash

## Start LDAP
echo "Starting LDAP DEMO"
/usr/hdp/current/knox-server/bin/ldap.sh start
#curl -i -uadmin:admin -H 'X-Requested-By: ambari' -X POST -d '{"RequestInfo":{"context":"Start Demo LDAP","command":"STARTDEMOLDAP"},"Requests/resource_filters":[{"service_name":"KNOX","component_name":"KNOX_GATEWAY","hosts":"dn0.dev"}]}' http://ambari-server.dev:8080/api/v1/clusters/dev/requests

i=0
while true
do
 echo -ne "Waiting for ldap to load...${i} seconds transpired\\r"
 sleep 1
 ((i++))
 netstat -nat | grep :33389 > /dev/null
 if [ $? -eq 0 ]; 
 then 
  echo ""
  break
 fi
done

# Insert the new users
cd /root
ldapadd -Z -x -w admin-password -D "uid=admin,ou=people,dc=hadoop,dc=apache,dc=org" -f addLdapUsers.ldif -H ldap://dn0.dev:33389


