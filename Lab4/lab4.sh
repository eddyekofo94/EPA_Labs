#!/bin/bash
# mkdir backup

if [ $# -lt 2 ]; then
    echo "bad input"
    exit 1
fi

if [ ! -d "$2" ]; then # If the second parameter is not a directory then.. make dir
    mkdir $2
    echo "created $2"
fi

tar -zcvf $2.tar.gz $1 # compress the param 1 into param 2
