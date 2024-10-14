#!/bin/bash

notnully="this is something (not nothing)"
nully=""

if [ -n "$notnully" ]
then
    echo "This is not at all nully..."
fi

if [ -z "$nully" ]
then
    echo "nully/zeroooo (length)"
fi
