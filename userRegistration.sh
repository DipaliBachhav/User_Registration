#!/bin/bash -x
shopt -s extglob

echo "User Registration"

pattern="^[A-Z][a-z]{3,}$"
read -p "Enter The First Name := " firstName
read -p "Enter The Last Name := " lastName
function checkPattern()
{
	local userName=$1 Pattern=$2
	if [[ $userName =~ $Pattern ]] 
	then
		 echo "valid Name" 
	else
		 echo "Invalid Name"
	fi
}
checkPattern $firstName $pattern
checkPattern $lastName $pattern

emailPattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

read -p "Enter The Email Id := " email

function checkPattern()
{
        local userName=$1 Pattern=$2
        if [[ $userName =~ $Pattern ]]
        then
                 echo "valid email"
        else
                 echo "Invalid email"
        fi
}
checkPattern $email $emailPattern
