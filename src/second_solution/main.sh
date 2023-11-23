#!/bin/bash

. ./info.sh

echo "Wish to write this in a file? (Yy/Nn)"
read Answer

if [[ $Answer == ["Yy"] ]]
then
    ./info.sh > ./"$(date +'%d_%m_%y_%H_%M_%S.status')"
    fi