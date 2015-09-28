#!/bin/bash

XFLUXPID=`ps ux | gawk -e '/^gonz.*xflux.*-l/ && !/grep/ && /-g/ { print $2 }'`

if [[ -z $XFLUXPID ]]; then
    xflux -l 42.6975100 -g 23.3241500
else
    echo "xflux already running at PID $XFLUXPID"
fi
