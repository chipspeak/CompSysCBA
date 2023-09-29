#!/bin/bash

##===========================================
##Author: Patrick O'Connor
##Student number: 20040412
##github: https://github.com/chipspeak
##Description: main menu script for programme
##===========================================

###variable purely for aesthetic adjustments.
spacing=" \n==============================================================================\n"

##PS3 variable contains numbers to account for clear and to prevent user from needing to scroll up should they forget their options
PS3='Choose whether you wish to 1) view records, 2) find expenses or 3) quit: '

options=("View records" "Find expenses" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "View records")
            ./view.sh
            ;;
        "Find expenses")
            ./findExpenses.sh
            ;;
        "Quit")
            echo -e $spacing
            echo "Exiting programme..."
            echo -e $spacing
            sleep 1
            clear
            break
            ;;
        *)  echo -e $spacing
            echo "invalid option, please try again"
            echo -e $spacing
            ;;
    esac
done