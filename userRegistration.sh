#!/bin/bash -x
shopt -s extglob

echo "User Registration"

pattern='^[[:upper:]]{1}[a-z]{3,}$'
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


emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2})?$"

read -p "Enter The Email Id := " email

function checkPattern()
{
        local userName=$1 Pattern=$2
        if [[ $userName =~ $Pattern ]]
        then
                 echo "Valid Email"
        else
                 echo "Invalid Email"
        fi
}
checkPattern $email $emailPattern

mobilePattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
read -p "Enter The Mobile Number := " mobileNumber

function checkMobilePattern()
{
	if [[ $mobileNumber =~ $mobilePattern ]]
	then
		echo "Valid Number:"
	else
		echo "Invalid Number"
	fi
}
checkMobilePattern

passwordPattern="^[a-z]+"
passwordUpperCase="[A-Z]{1}+"
passwordNumericNumber="[0-9]{1}+"
passwordSpecialCharacter="[@#$%&]?"
read -p "Enter The Password := " password

function checkPassword()
{
        if [[ ${#password} -ge 8 && $password =~ $passwordUpperCase && $password =~ $passwordPattern && $password =~ $passwordNumericNumber && $password =~ $passwordSpecialCharacter ]]
        then
                echo "Valid Password"
        else
                echo "Invalid Password"
        fi
}
checkPassword
