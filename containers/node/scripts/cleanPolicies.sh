#!/bin/bash


curl -u admin:admin -X DELETE "http://localhost:6080/service/public/v2/api/policy?servicename=dev_accumulo&policyname=all%20-%20namespace"
curl -u admin:admin -X DELETE "http://localhost:6080/service/public/v2/api/policy?servicename=dev_accumulo&policyname=all%20-%20system"
curl -u admin:admin -X DELETE "http://localhost:6080/service/public/v2/api/policy?servicename=dev_accumulo&policyname=all%20-%20authorization"
curl -u admin:admin -X DELETE "http://localhost:6080/service/public/v2/api/policy?servicename=dev_accumulo&policyname=all%20-%20table"
