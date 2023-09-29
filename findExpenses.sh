#!/bin/bash

##========================================================================
##Author: Patrick O'Connor
##Student number: 20040412
##github: https://github.com/chipspeak
##Description: script to filter through txt file and find expenses by name
##========================================================================

##variable purely for aesthetic adjustments.
spacing=" \n==============================================================================\n"
##variable to be set to true for use in a do while loop
subMenu=true

##loop is set
while $subMenu; do
echo -e $spacing

##user is prompted to enter the name of choice or r to return. This is then stored in the name variable.
read -p "Enter an employee name for their expenses or press r to return: " name
if [ $name = "r" ] || [ $name = "R" ] ; then
        subMenu=false
        echo -e $spacing
        echo "Returning to the previous menu..."
        echo -e $spacing
        sleep 1
        clear
fi
## expenses variable uses grep -i -w to check for the name in the txt file case-insensitive
## seeking a whole word before piping into awk to print the expenses column
expenses=$(grep -i -w $name employee.txt | awk '{print $5}')

##if statement checks if the variable is true i.e the name search returns a true result
if [ $expenses ] ; then
## echos a message to user listing the name and their expenses
        echo -e $spacing
        echo "$name's total expenses: $expenses"
elif [ ! $expenses ] && [ $name != "r" ] && [ $name != "R" ] ; then
## otherwise returns that the name could not be found and the main script returns to the initial 3 options.
        echo -e $spacing
        echo "That employee name cannot be found."
fi
done