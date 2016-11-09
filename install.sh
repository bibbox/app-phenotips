#!/bin/bash
#
# SCRIPT TO INSTALL PHENOTIPS INSTANCE AT A BIBBOX SERVER
#
#
echo "Installing OpenSpecimen BIBBOX Application"
echo "installing from $PWD"

PROGNAME=$(basename $0)

clean_up() {	
	exit $1
}

error_exit()
{
	echo "ERROR in ${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
	clean_up 1
}

checkParametersAndWriteLog() 
{
# SAME IN EVERY INSTALL.SH / DONT CHANGE
    echo "Setup parameters:"
    if  [[ -z "$instance" ]]; then
         error_exit "The instance is not set."
    else
        echo "Instance: $instance" 
    fi    
    if [[ -z "$folder" ]]; then
        error_exit "The fodler is not set."
    else
        echo "Folder: $folder"
    fi
    if [[ -z "$port" ]]; then
        error_exit "The port is not set."
    else
        echo "Port: $port"
    fi 
# ADD CUSTOm CHECKS AN LOSs as YOU LIKE

}

updateConfigurationFile()
{
    echo "Create and Update config files"  
    if  [[ ! -f "$folder/docker-compose.yml" ]]; then
        cp docker-compose-template.yml "$folder/docker-compose.yml"
    fi
  # SAME IN EVERY INSTALL.SH / DONT CHANGE  
    sed -i  "s/§§INSTANCE/${instance}/g" "$folder/docker-compose.yml"
    sed -i  "s#§§FOLDER#${folder}#g" "$folder/docker-compose.yml"
    sed -i  "s/§§PORT/${port}/g" "$folder/docker-compose.yml"
  # CHANGE  
  # TODO special characters in passwords 
    sed -i "s/§§EXTAPI_PORT/${EXTAPI_PORT}/g" "$folder/docker-compose.yml"
}

createFolders()
{

    echo "Create folders within $folder"
    if [[ ! -d "$folder" ]]; then
        echo "Creating Installation Folder"
        mkdir -p "$folder/images/phenotips-extapi"
        mkdir -p "$folder/var/lib/mysql"
        mkdir -p "$folder/phenotips/extapi"
    fi
#
# COPY 
    cp -R images/phenotips-extapi/*  "$folder/images/phenotips-extapi/"    
    cp -R images/phenotips-extapi/src/* "$folder/phenotips/extapi"   

}

#
# MAIN
while [ "$1" != "" ]; do
    case $1 in
        -i | --instance )       shift
                                instance=$1
                                ;;
        -f | --folder )         shift
                                folder=$1
                                ;;
        -p | --port )           shift
                                port=$1
                                ;;
         --EXTAPI_PORT )         shift
                                EXTAPI_PORT=$1
                                ;;                    
    esac
    shift
done
#
# SAME IN EVERY INSTALL.SH / DONT CHANGE
checkParametersAndWriteLog
createFolders
updateConfigurationFile
