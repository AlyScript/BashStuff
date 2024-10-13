#!/bin/bash

NAME=$1

if [ "$NAME" = "Adam"  ]
then
   echo "Hi Adam"
else
   echo "Hi $USER, I don't know your real name. Pass it in as an argument."
fi
