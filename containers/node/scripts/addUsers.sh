#!/bin/bash

curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"doctor","description":""}' http://localhost:6080/service/xusers/secure/groups
curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"reception","description":""}' http://localhost:6080/service/xusers/secure/groups
curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"billing","description":""}' http://localhost:6080/service/xusers/secure/groups

curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"accumulo","password":"abcdefg123","firstName":"accumulo","lastName":"","emailAddress":"","userRoleList":["ROLE_USER"],"groupIdList":null,"status":1}' http://localhost:6080/service/xusers/secure/users
curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"doctorbob","password":"abcdefg123","firstName":"Doctor","lastName":"bob","emailAddress":"","userRoleList":["ROLE_USER"],"groupIdList":null,"status":1}' http://localhost:6080/service/xusers/secure/users
curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"tom","password":"abcdefg123","firstName":"Tom","lastName":"","emailAddress":"","userRoleList":["ROLE_USER"],"groupIdList":null,"status":1}' http://localhost:6080/service/xusers/secure/users
curl -u admin:admin -H "Content-Type: application/json" -X POST -d '{"name":"jane","password":"abcdefg123","firstName":"Jane","lastName":"","emailAddress":"","userRoleList":["ROLE_USER"],"groupIdList":null,"status":1}' http://localhost:6080/service/xusers/secure/users


echo password | kinit admin/admin@EXAMPLE.COM

echo password | kadmin -q 'addprinc -pw password doctorbob'
echo password | kadmin -q 'addprinc -pw password tom'
echo password | kadmin -q 'addprinc -pw password jane'

