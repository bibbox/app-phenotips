# app-phenotips

## Hints
* approx. time with medium fast internet connection: 15 minutes
* default user/pwd: Admin / admin


## Docker Images Used
 * [BIBBOX/phenotips](https://hub.docker.com/r/bibbox/phenotips/) 
 * [mySQL](https://hub.docker.com/_/mysql/), offical mySQL container
 * [busybox](https://hub.docker.com/_/busybox/), offical data container
 
## Install Environment Variables
  *	MYSQL_ROOT_PASSWORD = password, only used within the docker container
  * MYSQL_DATABASE = name of the mysql database, typical *phenotips*. The DB file is stored in the mounted volume
  * MYSQL_USER = name of the mysql user, typical *phenotips*
  * MYSQL_PASSWORD = mysql user password, only used within the docker container

## Mounted Volumes

* the mysql datafolder _/var/mysql_ will be mounted to _/opt/apps/INSTANCE_NAME/var/mysql_ in your BIBBOX kit 

## Installation Instructions 

* go to the web page http://localhost:8098
* phentips will intitialize its database (can take some minutes)
* in the distrubution wizard click on <CONTINUE>

(install-screen-01.png)

* install the Phenotips Application interface by pressing <INSTALL> (this can take several minutes, up to a hour depending on your internet connectivity) 

(install-screen-02.png)


* press <CONTINUE> (further Phenotips components are now downloaded), possible you run in a timeout, dont worry just login and the downloaf of the components will continue

* INITIAL-USER:   Admin
* INITIAL-PASWORD admin

* press >COINTINUE> in some screens and you should arive at

(install-screen-03.png)

* At first change the admin password and continue with your configuration
* https://phenotips.org/AdminGuide/UserAdministration

(install-screen-04.png)

