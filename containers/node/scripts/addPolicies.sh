#!/bin/bash

for file in `find ./policies -type f -name "*.json"`;do 

   curl -u admin:admin -X POST -H "Content-Type: application/json" -d @${file} "http://localhost:6080/service/plugins/policies"

done
