#!/bin/bash

# Function to add, commit, and push changes
function git_push() {
    # Check if a commit message is provided
    if [ -z "$1" ]; then
        echo "Error: Commit message is required."
        echo "Usage: ./git.sh \"Your commit message\""
        exit 1
    fi

    # Stage all changes
    git add .

    # Commit the changes with the provided message
    git commit -m "$1"

    # Push the changes to the remote repository
    git push origin main
}

# Call the function with the first script argument
git_push "$1"