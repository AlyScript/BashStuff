#!/bin/bash
# testing and control flow with if, [ and [[, and/or

NUM_REQUIRED_ARGS=2

# Do we have at least two arguments
if [ $# -lt NUM_REQUIRED_ARGS  ]
then
    echo "Not enough arguments. Call this script with ./{$0) <name> <number>"
fi

# The second portion won't execute because the first did successfully.
echo "hi." || echo "This won't happen."
$(ls nonexistentfile) || echo "This happens when the first thing fails."
echo $(pwd) && echo "This happens when the first part is successful"

str1="a"
str2="b"

if [ "$str1" = "$str2" ]
then
    echo "${str1} is equal to ${str2}!"
fi

if [ "$str1" != "$str2" ]
then
    echo "${str1} is not equal to ${str2}!"
fi
