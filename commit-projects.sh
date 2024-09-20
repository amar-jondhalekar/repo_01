#!/bin/bash

# List of project names and dates
declare -A projects=(
    ["Project1"]="2024-05-13"
    ["Project2"]="2024-03-09"
    ["Project3"]="2024-09-24"
    ["Project4"]="2024-10-01"
    ["Project5"]="2024-10-01"
    ["Project6"]="2024-02-26"
    ["Project7"]="2024-02-26"
    ["Project8"]="2024-10-01"
    ["Project9"]="2024-03-25"
    ["Project10"]="2024-05-15"
    ["Project11"]="2024-12-18"
    ["Project12"]="2024-03-24"
    ["Project13"]="2024-07-24"
    ["Project14"]="2024-02-19"
    ["Project15"]="2024-02-28"
)

# Loop through projects and create commits
for project in "${!projects[@]}"; do
    # Create a new directory for each project
    mkdir "$project"
    cd "$project"
    
    # Create a simple JavaScript file for the project
    echo "console.log('$project is running');" > "$project.js"
    
    # Add and commit the project
    git add "$project.js"
    GIT_AUTHOR_DATE="${projects[$project]} 12:00:00" GIT_COMMITTER_DATE="${projects[$project]} 12:00:00" git commit -m "$project commit on ${projects[$project]}"
    
    # Go back to the main repository directory
    cd ..
done
