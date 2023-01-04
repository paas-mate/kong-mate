#!/bin/bash

CONF=/usr/local/kong/kong.conf
echo 'database = off' > $CONF
kong start --conf $CONF
