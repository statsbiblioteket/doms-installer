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

MAILER_SENDER=$(whoami)"@"$(hostname)".statsbiblioteket.dk"
MAILER_RECIPIENT="abr@kb.dk"

# The folders
TOMCAT_DIR=${tomcatDir}

LOG_DIR=$TOMCAT_DIR/logs

SERVICES_DIR=$TESTBED_DIR/services


FEDORA_DIR=$SERVICES_DIR/fedora

SCHEMA_DIR=$SERVICES_DIR/schemas

TOMCAT_CONFIG_DIR=$SERVICES_DIR/conf

WEBAPPS_DIR=$SERVICES_DIR/webapps

TOMCAT_APPS_DIR=$SERVICES_DIR/tomcat-apps


INGEST_DIR=$TESTBED_DIR/ingester

DATA_DIR=${storageDir}/data

CACHE_DIR=${storageDir}/cache

BASEOBJS_DIR=$TESTBED_DIR/base-objects-ingester

DOCS_DIR=$TESTBED_DIR/docs

XMLTAPES_MIGRATOR_DIR=$TESTBED_DIR/xmltapes-migrator

#Database
USE_POSTGRESQL=true
POSTGRESQL_SERVER=db:5432
POSTGRESQL_DB=domsFieldSearch
POSTGRESQL_USER=domsFieldSearch
POSTGRESQL_PASS=domsFieldSearchPass

#TRIPLESTORE
#USE_MPTSTORE=false
USE_MPTSTORE=true
MPTSTORE_SERVER=db:5432
MPTSTORE_DB=domsMPT
MPTSTORE_USER=domsMPT
MPTSTORE_PASS=domsMPTPass

UPDATETRACKER_POSTGRESQL_SERVER=db:5432
UPDATETRACKER_POSTGRESQL_DB=domsUpdateTracker
UPDATETRACKER_POSTGRESQL_USER=domsUpdateTracker
UPDATETRACKER_POSTGRESQL_PASS=domsUpdateTrackerPass

USE_UPDATETRACKER=true
USE_SURVEILANCE=true
USE_LDAP=true
USE_CENTRAL=true
USE_VALIDATOR_HOOK=true
USE_NO_OBJECT_POLICY=true
USE_XMLTAPES=true

USE_REDIS=false
REDIS_HOST=localhost
REDIS_PORT=6379
REDIS_DATABASE=0


XMLTAPES_OBJECTS_JDBC=jdbc:postgresql://db:5432/xmltapesObjectIndex
XMLTAPES_DATASTREAMS_JDBC=jdbc:postgresql://db:5432/xmltapesDatastreamIndex
XMLTAPES_DBUSER=xmltapesIndex
XMLTAPES_DBPASS=xmltapesIndexPass