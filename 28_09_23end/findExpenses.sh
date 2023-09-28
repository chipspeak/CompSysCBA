#!/bin/bash
##Author: Patrick O'Connor
##Student number: 20040412
##github: https://github.com/chipspeak

echo ""
echo "=============================================================================="
echo ""

## user input is stored as the name variable via prompt
read -p "Please enter an employee name to search for their expenses: " name

## expenses variable uses grep -i -w to check for the name in the txt file case-insensitive
## seeking a whole word before piping into awk to print the expenses column
expenses=$(grep -i -w $name employee.txt | awk '{print $5}')

##if statement checks if the variable is true i.e the name search returns a true result
if [ $expenses ] ; then
## echos a message to user listing the name and their expenses
        echo ""
        echo "=============================================================================="
        echo ""
        echo "$name's total expenses: $expenses"
        echo ""
        echo "=============================================================================="
        echo ""
        else
## otherwise returns that the name could not be found and the main script returns to the initial 3 options.
        echo ""
        echo "=============================================================================="
        echo ""
        echo "That employee name cannot be found."
        echo ""
        echo "=============================================================================="
        echo ""
fi