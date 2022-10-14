#!/usr/bin/env bash

# Execute here
cd "$(dirname "$0")"

# The script should be able to generate 1 files in 100 random locations and save location of the files in a file called "locations.txt"

#  Steps of picking a random location:
# 1. Generate a random number as steps count
# 2. Go to root
# 3. List all files and directories and save only directories as an array
# 4. Pick a random number between 0 and the length of the array
# 5. Go to the directory of the random number, if there is no directory, stop here
# 6. Repeat steps 3-5 until the steps count is 0
# 7. Create a file at the stopped directory with the text "This is a secret message"
# 8. Save the path of the file in a file called "locations.txt" at working directory
# 9. Repeat steps 1-8 100 times

function random {
    # Generate a random number between 0 and 100
    echo $((RANDOM % 100))
}

function random_location {
    # Generate a random location
    # 1. Generate a random number as steps count
    steps=$(random)
    # 2. Go to root
    cd /
    # 3. List all files and directories and save only directories as an array
    dirs=($(ls -d */))
    # 4. Pick a random number between 0 and the length of the array
    index=$(random)
    # 5. Go to the directory of the random number, if there is no directory, stop here
    cd "${dirs[$index]}"
    # 6. Repeat steps 3-5 until the steps count is 0
    while [ $steps -gt 0 ]; do
        dirs=($(ls -d */))
        index=$(random)
        cd "${dirs[$index]}"
        steps=$((steps - 1))
    done
    # 7. Create a file at the stopped directory with the text "This is a secret message"
    echo "This is a secret message" > secret.txt
    # 8. Save the path of the file in a file called "locations.txt" at working directory
    echo "$(pwd)/secret.txt" >> locations.txt
}

# 9. Repeat steps 1-8 100 times
for i in {1..100}; do
    random_location
done