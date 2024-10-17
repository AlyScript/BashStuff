#!/bin/bash

if [ $# -lt 1  ]
then
    echo "Not enough arguments!"
    echo "Try again, ensuring you pass in at least one directory."
    exit 1
fi

echo $@

lines=$(ls -lh $1 | wc -l)

echo "You have $(($lines-1)) objects in the $1 directory."
