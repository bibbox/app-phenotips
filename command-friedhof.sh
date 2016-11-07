#!/bin/bash
./install.sh   --folder /Users/mue/dockerdata \
               --instance debug \
               --port     8089  \
               --MYSQL_ROOT_PASSWORD bibboxadmin \
               --MYSQL_DATABASE      phenotios  \ 
               --MYSQL_USER          phenotios   \
               --MYSQL_PASSWORD      bibboxadmin
               
               