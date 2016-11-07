#!/bin/bash
rm -rf /home/wp5/dev/dockerdata/phenotips-phenotips
./install.sh   --folder  /home/wp5/dev/dockerdata/phenotips-phenotips \
               --instance phenotips  \
               --port     8089  \
               --MYSQL_ROOT_PASSWORD bibboxadmin \
               --MYSQL_DATABASE phenotips \
               --MYSQL_USER  phenotips  \
               --EXTAPI_PORT 9231  \
               --MYSQL_PASSWORD      bibboxadmin

echo more /home/wp5/dev/dockerdata/phenotips-phenotips/docker-compose.yml
echo ls /home/wp5/dev/dockerdata/phenotips-phenotips/
echo docker-compose -f /home/wp5/dev/dockerdata/phenotips-phenotips/docker-compose.yml up -d 

