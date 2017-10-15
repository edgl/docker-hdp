#!/bin/bash
set -e

cd /tmp

mysql -u root -ppassword < ./rangerConfig.sql
