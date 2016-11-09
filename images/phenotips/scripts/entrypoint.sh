#!/bin/bash
echo "Starting Phenotuos Application Container!"

echo "Wait for DB server to be ready"
/opt/scripts/waitforit.sh "phenotips-db:3306"

/usr/local/tomcat/bin/startup.sh
tail -f /usr/local/tomcat/logs/catalina.out
