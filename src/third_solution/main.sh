#!/bin/bash

if ! [ $4 ] || [ $5 ]
then
    echo "Only 4 arguments (example 1 2 3 4)"
else
    for arg in "$@"; do
        if ! [[ $arg =~ ^[1-6]$ ]]
        then
            echo "Incorrect argument. He has value 1-6"
            exit 1
        fi
    done
    if [ $1 == $2 ] || [ $3 == $4 ]
    then
        echo "Arguments can't equal. First should not be equal second. Analogic third and fourth"
    else
        echo "$(sh ./colors.sh $@)"
    fi
fi