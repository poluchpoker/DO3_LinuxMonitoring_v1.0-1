#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]];
then 
	printf "Incorrected dates\n"
else
	echo $1
fi