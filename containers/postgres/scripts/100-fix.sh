#!/bin/bash

sed -i 's/max_connections = 100/max_connections = 2000/g' /var/lib/postgresql/data/postgresql.conf
