#!/bin/bash

CONF=/usr/local/kong/kong.conf
if [ ! -n "${DATABASE_SWITCH}" ]; then
    echo 'database = off' > $CONF
else
    echo 'database = '${DATABASE_SWITCH}'' > $CONF
fi

kong start --conf $CONF
