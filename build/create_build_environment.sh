#!/bin/bash

# $Id create_build_environment.sh $
# $Author: jrg$
# $Date:   2009-09-09$
#
# Script for producing the build environment for the DOMS testbed.
#
# USAGE: This script will check out specific revisions of the needed
# SourceForge projects, and place them ready for building.
# A directory called "checkouts" will be created in the current directory.
# This is where the downloaded SourceForge package contents will be put.
#

set -eu    # see http://ss64.com/bash/set.html

#
# Variables for the script create_build_environment.sh
# for to define the SourceForge packages to check-out.
#
SOURCEFORGE_DOMS_SVN_URL="https://doms.svn.sourceforge.net/svnroot/doms"

         
BASEDIR=$1

PROJECTS=$2

REVISION=$3

SCRIPT_DIR=$(dirname $0)
pushd $SCRIPT_DIR > /dev/null
SCRIPT_DIR=$(pwd)
popd > /dev/null

# CHECKOUTDIR=$BASEDIR/checkouts
CHECKOUTDIR=$BASEDIR
mkdir -p $CHECKOUTDIR
cd $CHECKOUTDIR

# Each element in the array PACKAGES is expected to be a path with the first
# path component being the name of the package, followed by a subpath to the
# svn-tag which we want to check out.
# Examples: bitstorage/trunk, or domsserver/tags/<something>
# The first name of the path is extracted
# (see http://tldp.org/LDP/abs/html/string-manipulation.html)
# and used as the name of the directory inside the checkouts dir, in which the
# svn checkout output goes.
cat $SCRIPT_DIR/../$PROJECTS | while read line; do
    if [ ! -z "$line" ]; then

        if [ -d "$CHECKOUTDIR/${line}" ];
          then
            echo "Svn updating $line"
            
            svn up $CHECKOUTDIR/${line} -r$REVISION
          else
            echo "Svn getting $line"
            svn co $SOURCEFORGE_DOMS_SVN_URL/$line $CHECKOUTDIR/${line} -r$REVISION
        fi
    fi
done