#!/bin/bash

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname

PS3="Choose the type of phone you would like to have: "
select phone in headset handheld; do
	echo "You selected $phone"
	break
done

PS3="Choose your department: "
select department in 'finance' 'sales' 'customer service' 'engineering';do
	echo "Your department is $department"
	break
done

read -N 4 -p "What is your extension number? (4 digits only): " extension
echo
read -N 4 -s -p "What access code would you like to use when dialing in? (4 digits only): " access
echo

echo "$firstname,$lastname,$extension,$access,$phone,$department" >> extensions.csv
