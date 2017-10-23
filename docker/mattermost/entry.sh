#!/bin/bash

if [ ! -z "$MM_PASSWORD" ]; then
    sed -i "s|MM_PASSWORD|${MM_PASSWORD}|1" /opt/dspace/config/dspace.cfg
fi

if [ ! -z "$MM_DB_HOST" ]; then
    sed -i "s|MM_DB_HOST|${MM_DB_HOST}|1" /opt/dspace/config/dspace.cfg
fi

/opt/mattermost/bin/platform