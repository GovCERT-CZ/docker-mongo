#!/bin/bash
set -e

chown -R mongodb:mongodb /data/db
command="/usr/bin/mongod $@"
su mongodb -c "$command"

