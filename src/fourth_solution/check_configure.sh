#!/bin/bash

p1=$(cat configure | grep "column1_background=" | cut -c 20)
p2=$(cat configure | grep "column1_font_color=" | cut -c 20)
p3=$(cat configure | grep "column2_background=" | cut -c 20)
p4=$(cat configure | grep "column2_font_color=" | cut -c 20)

if [[ "$p1" == "$p2"] || ["$p3" == "$p4" ]]
then
    echo "Arguments can't equal. First should not be equal second. Analogic third and fourth"
else
    if ! [[ $p1 =~ ^[1-6]$ ]]
    then
        p1=2
    fi
    if ! [[ $p2 =~ ^[1-6]$ ]]
    then
        p2=4
    fi
    if ! [[ $p3 =~ ^[1-6]$ ]]
    then
        p3=3
    fi
    if ! [[ $p4 =~ ^[1-6]$ ]]
    then
        p4=5
    fi

echo $p1 $p2 $p3 $p4
fi