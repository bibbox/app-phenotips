# PHENOTIPS BIBBOX application

## Hints
* approx. time with medium fast internet connection: **15 minutes**
* initial user/passwordd: **Admin / admin**
* This container can be installed as [BIBBOX APP](https://bibbox.readthedocs.io/en/latest/ "BIBBOX") or standalone. 
* after the docker installation follow these [instructions](NSTALL-APP.md)

## Standalone Installation

Clone the github repsoitory and start the install.sh. If necessary change the ports and volume mounts in `docker-compose.yml`.  

`sudo git clone https://github.com/bibbox/app-phenotips`

`sudo chmod +x install.sh`

`sudo ./install.sh`


After the installation (might take a few minutes) you need to make some configuration follow these **[instructions](INSTALL-APP.md)**. Finally you can open **http://localhost:8010** in your browser to access PhenoTips.

## Install within BIBBOX

Within BIBBOX you can use the [BIBBOX](https://bibbox.readthedocs.io/en/latest/ "BIBBOX") to install a lot of software tools. After the installation you will find your application in the dashboard. You need to make some configuration before you can use the application **please follow these [instructions](INSTALL-APP.md)**.

## Docker Images Used
 * [BIBBOX/phenotips](https://hub.docker.com/r/bibbox/phenotips/) 
 * [mariadb](https://hub.docker.com/_/mariadb), offical mariadb container

 
## Install Environment Variables
  * MYSQL_ROOT_PASSWORD = password, only used within the docker container
  * MYSQL_DATABASE = name of the mysql database, typical *phenotips*. The DB file is stored in the mounted volume
  * MYSQL_USER = name of the mysql user, typical *phenotips*
  * MYSQL_PASSWORD = mysql user password, only used within the docker container

## Mounted Volumes
* ./data/phenotips/extapi
* ./data/var/lib/mysql
