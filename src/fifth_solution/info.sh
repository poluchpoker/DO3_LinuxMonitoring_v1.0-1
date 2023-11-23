#!/bin/bash

function all_folders() {
    echo -n "Total number of folders (including all nested ones) = "
    find $1 -type d | wc -l
}

function top_big_folders() {
    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
    du -h -- $1* | sort -rh | head -5 | cat -n | awk '{print $1" - "$3", "$2}'
}


function total_files() {
    echo -n "Total number of files = "
    find $1 -type f | wc -l
}

function dif_file_types() {
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $(find $1 -name "*.conf" | wc -l)"
    echo "Text files = $(find $1 -name "*.txt" | wc -l)"
    echo "Executabe files = $(find $1 -type f -executable | wc -l)"
    echo "Log files (with the extension .log) = $(find $1 -name "*.log" | wc -l)"
    echo "Archive files = $(find $1 -name "*.tar" | wc -l)"
    echo "Symbolic links = $(find $1 -type l | wc -l)"
}

function top_ten_files() {
    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
    for file in {1..10}
    do
        path=$(find $1 -type f -exec du -h {} + | sort -rh | head -10 | sed "${file}q;d")
        if ! [[ -z $path ]]
        then
            echo -n "$file - "
            echo -n "$(echo $path | awk '{print $2}'), "
            echo -n "$(echo $path | awk '{print $1}'), "
            extension=$(echo $path | awk -F'.' '{print $NF}')
            echo "$extension"
        fi
    done
}

function top_ten_exec_files() {
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
    for file in {1..10}
    do
        path=$(find $1 -type f -executable -exec du -h {} + | sort -rh | head -10 | sed "${file}q;d")
        if ! [[ -z $path ]]
        then
            echo -n "$file - "
            echo -n "$(echo $path | awk '{print $2}'), "
            echo -n "$(echo $path | awk '{print $1}'), "
            extension=$(echo $path | awk '{print $2}')
            hash=$(md5sum $extension | awk '{print $1}')
            echo "$hash"
        fi
    done
}