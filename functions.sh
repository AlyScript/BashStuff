#!/bin/bash

# Function to ask if user wants to pull latest changes from git. This should be added to your .bashrc or .bash_profile.

function check_git_updates() {
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1
    then
        if [ $(git fetch 2>&1 | wc -c) -ge 1 ]
        then
            read -p "Your branch is behind the remote branch. Do you want to pull the latest changes? (y/n): " answer
            if [ "$answer" = "y" ]
            then
                git pull
            else
                echo "Skipping git pull"
            fi
        fi
    fi
}
