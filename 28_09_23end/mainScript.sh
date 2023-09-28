#!/bin/bash
##Author: Patrick O'Connor
##Student number: 20040412
##github: https://github.com/chipspeak

PS3='Please choose whether you wish to view records, find expenses or quit: '
options=("View records" "Search expenses" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "View records")
            ./view.sh
            ;;
        "Search expenses")
            ./findExpenses.sh
            ;;
        "Quit")
            clear
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done