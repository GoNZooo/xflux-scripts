#!/bin/bash

XFLUXPID=`ps ux | gawk -e '/^gonz.*xflux.*-l/ && !/grep/ && /-g/ { print $2 }'`

if [[ -n $XFLUXPID ]]; then
    kill $XFLUXPID
else
    echo "No xflux process running."
fi
