#!/bin/bash

[ 3 -le $# -a $# -le 5 ] || { 
    cat <<EOF
icn USER PASSWORD HOSTNAME [PORT]

Initialize Configured Namespace for USER with PASSWORD connecting to HOSTNAME on PORT (defaults to 3306)
EOF
    exit 1;
    }

export MYSQL_PWD=${2:?"No password provided"}
mysql <source_this.sql \
      --user=${1:?"No username provided"} \
      --host=${3:?"No hostname provided"} \
      ${4:+"--port=$4"} &&

cat <<EOF
Hive Metastore Settings
     JDB URL:   jdbc:mysql://${3}:${4:-3306}/hive
     User Name: hive
     Password:  Hive_Password1!

Sentry Settings
     JDB URL:   jdbc:mysql://${3}:${4:-3306}/sentry
     User Name: sentry
     Password:  Sentry_Password1!

EOF

