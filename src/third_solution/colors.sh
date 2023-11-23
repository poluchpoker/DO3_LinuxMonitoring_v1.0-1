#!/bin/bash

BackBlack="\033[40m"; BackRed="\033[41m"; BackGreen="\033[42m"
BackBlue="\033[44m"; BackPurple="\033[45m"; BackWhite="\033[47m"

TextBlack="\033[30m"; TextRed="\033[31m"; TextGreen="\033[32m"
TextBlue="\033[34m"; TextPurple="\033[35m"; TextkWhite="\033[37m"

case $1 in
    "1") B1=$BackWhite ;;
    "2") B1=$BackRed ;;
    "3") B1=$BackGreen ;;
    "4") B1=$BackBlue ;;
    "5") B1=$BackPurple ;;
    "6") B1=$BackBlack ;;
esac

case $2 in
    "1") T1=$TextWhite ;;
    "2") T1=$TextRed ;;
    "3") T1=$TextGreen ;;
    "4") T1=$TextBlue ;;
    "5") T1=$TextPurple ;;
    "6") T1=$TextBlack ;;
esac

case $3 in
    "1") B2=$BackWhite ;;
    "2") B2=$BackRed ;;
    "3") B2=$BackGreen ;;
    "4") B2=$BackBlue ;;
    "5") B2=$BackPurple ;;
    "6") B2=$BackBlack ;;
esac

case $4 in
    "1") T2=$TextWhite ;;
    "2") T2=$TextRed ;;
    "3") T2=$TextGreen ;;
    "4") T2=$TextBlue ;;
    "5") T2=$TextPurple ;;
    "6") T2=$TextBlack ;;
esac

echo "$(sh info.sh "$B1" "$T1" "$B2" "$T2")"