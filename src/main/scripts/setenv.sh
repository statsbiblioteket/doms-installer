#!/bin/bash

TOMCATZIP=`basename $BASEDIR/data/tomcat/*.zip`
FEDORAJAR=`basename $BASEDIR/data/fedora/*.jar`
INGESTERZIP=`basename $BASEDIR/ingester/*.zip`


# The normal config values
PORTRANGE=78
SUMMA_PORTRANGE=576
TOMCAT_SERVERNAME=localhost

FEDORAADMIN=fedoraAdmin
FEDORAADMINPASS=fedoraAdminPass

YOUSEEUSER=youseeIngester
YOUSEEUSERPASS=youseeIngesterPass


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

BASEOBJS_DIR=$TESTBED_DIR/base-objects-ingester

DOCS_DIR=$TESTBED_DIR/docs

#Database
#USE_POSTGRESQL=true
USE_POSTGRESQL=false
POSTGRESQL_SERVER=127.0.0.1:5433
POSTGRESQL_DB=doms-test
POSTGRESQL_USER=doms
POSTGRESQL_PASS=faeTh9xa

#Bitstorage
BITFINDER=http://bitfinder.statsbiblioteket.dk/
BITSTORAGE_SCRIPT="ssh doms@stage01 bin/server.sh"
