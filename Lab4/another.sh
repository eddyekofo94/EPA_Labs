#!/bin/bash
# mkdir backup

if [ $# -lt 2 ]; then
    echo "bad input"
    exit 1
fi

if [ ! -d "$2" ]; then
    mkdir $2
    echo "created $2"

fi

tar -zcvf $2.tar.gz "$1"
