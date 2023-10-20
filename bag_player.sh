#!/bin/bash

# Specify the directory where your bag files are located
bag_directory="/media/cvit/IDD-3/2023-10-16/route2/forward"

# Check if the directory exists
if [ ! -d "$bag_directory" ]; then
    echo "Directory $bag_directory does not exist."
    exit 1
fi

# List all bag files in the directory
bag_files=("$bag_directory"/*.bag)

# Check if there are any bag files
if [ ${#bag_files[@]} -eq 0 ]; then
    echo "No bag files found in $bag_directory"
    exit 1
fi

# Loop through and play each bag file
for bag_file in "${bag_files[@]}"; do
    echo "Playing bag file: $bag_file"
    rosbag play "$bag_file"
done
