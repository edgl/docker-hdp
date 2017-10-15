#!/bin/bash

curl -u admin:admin -X POST -H "Accept: application/json" -H "Content-Type: application/json" -d @serviceDef.json http://localhost:6080/service/plugins/services
