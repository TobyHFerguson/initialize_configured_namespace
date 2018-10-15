#!/bin/bash

[ 3 -le $# -a $# -le 5 ] || { 
    cat <<EOF
icn USER PASSWORD HOSTNAME [PORT]

Initialize Configured Namespace for USER with PASSWORD connecting to HOSTNAME on PORT (defaults to 3306)
EOF
    exit 1;
    }

mysql <source_this.sql \
      --user=${1:?"No username provided"} \
      --password=${2:?"No password provided"} \
      --host=${3:?"No hostname provided"} \
      ${4:+"--port=$4"}
