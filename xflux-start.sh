#!/bin/bash

XFLUXPID=`ps ux | gawk -e '/^gonz.*xflux.*-l/ && !/grep/ && /-g/ { print $2 }'`
LATITUDE=`gawk '/lat/ { print $2 }' location`
LONGITUDE=`gawk '/long/ { print $2 }' location`

if [[ -z $XFLUXPID ]]; then
    xflux -l $LATITUDE -g $LONGITUDE
else
    echo "xflux already running at PID $XFLUXPID"
fi
