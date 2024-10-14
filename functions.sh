#!/bin/bash

# Function to ask if user wants to pull latest changes from git. This should be added to your .bashrc or .bash_profile.

function check_git_updates() {
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1
    then
        git fetch &> /dev/null

        LOCAL=$(git rev-parse @) # '@' is shorthand for the HEAD of current branch
        BASE=$(git merge-base @ @{u}) # '@{u}' is shorthand for the upstream branch
        
        if [ "$LOCAL" = "$BASE" ]
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
