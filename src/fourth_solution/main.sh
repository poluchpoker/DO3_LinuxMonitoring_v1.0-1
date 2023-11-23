#!/bin/bash

param=$(bash ./check_configure.sh)

echo "$(bash ./colors.sh ${param[@]:0:7})"

bash ./print_color.sh $param