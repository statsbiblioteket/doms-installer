#!/bin/bash

SETENV_SOURCED=true

TOMCATZIP=`basename $BASEDIR/data/tomcat/*.zip`
FEDORAJAR=`basename $BASEDIR/data/fedora/*.jar`
INGESTERZIP=`basename $BASEDIR/ingester/*.zip`


# The normal config values
PORTRANGE=78
SBOI_SUMMA_PORTRANGE=586
DOMSWUI_SUMMA_PORTRANGE=587
TOMCAT_SERVERNAME=localhost

FEDORAADMIN=fedoraAdmin
FEDORAADMINPASS=fedoraAdminPass

FEDORAUSER=fedoraReadOnlyAdmin
FEDORAUSERPASS=fedoraReadOnlyPass

# The folders
TOMCAT_DIR=$TESTBED_DIR/tomcat

LOG_DIR=$TOMCAT_DIR/logs

SERVICES_DIR=$TESTBED_DIR/services


FEDORA_DIR=$SERVICES_DIR/fedora

SCHEMA_DIR=$SERVICES_DIR/schemas

TOMCAT_CONFIG_DIR=$SERVICES_DIR/conf

WEBAPPS_DIR=$SERVICES_DIR/webapps

TOMCAT_APPS_DIR=$SERVICES_DIR/tomcat-apps


INGEST_DIR=$TESTBED_DIR/ingester

DATA_DIR=$TESTBED_DIR/data

CACHE_DIR=$TESTBED_DIR/cache



SBOI_SUMMARISE_DIR=$TESTBED_DIR/sboi-summarise
SBOI_SUMMA_STORAGE_DIR=$TESTBED_DIR/sboi-summaStorage

DOMSWUI_SUMMARISE_DIR=$TESTBED_DIR/domswui-summarise
DOMSWUI_SUMMA_STORAGE_DIR=$TESTBED_DIR/domswui-summaStorage


BASEOBJS_DIR=$TESTBED_DIR/base-objects-ingester

DOCS_DIR=$TESTBED_DIR/docs

#Database
#USE_POSTGRESQL=true
USE_POSTGRESQL=false
POSTGRESQL_SERVER=localhost
POSTGRESQL_DB=domsFieldSearch
POSTGRESQL_USER=domsFieldSearch
POSTGRESQL_PASS=domsFieldSearchPass

#TRIPLESTORE
#USE_MPTSTORE=false
USE_MPTSTORE=true
MPTSTORE_SERVER=localhost
MPTSTORE_DB=domsTripleStore
MPTSTORE_USER=domsMPT
MPTSTORE_PASS=domsMPTPass



USE_UPDATETRACKER=true
USE_SURVEILANCE=true
USE_LDAP=true
USE_CENTRAL=true
USE_VALIDATOR_HOOK=true
USE_NO_OBJECT_POLICY=true
USE_XMLTAPES=true

REDIS_HOST=localhost
REDIS_PORT=6379
REDIS_DATABASE=0
