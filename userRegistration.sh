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

mobilePattern="^[0-9]{2}[ ]{1}[0-9]{10}"
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

passwordPattern="^[a-z]{8,}"
read -p "Enter The Password := " password

function checkPassword()
{
	if [[ ${#password} -ge 8 && $password =~ $passwordPattern ]]
	then
		echo "Valid Password:"
	else
		echo "Invalid Password:"
	fi
}
checkPassword

password_At_List_one_Upper_Case="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)[a-zA-Z0-9]$"
read -p "Enter The PassWord := " password

function checkPassword()
{
        if [[ $1 =~ $2 ]]
        then
                echo "Valid Password:"
        else
                echo "Invalid Password:"
        fi
}
checkPassword $password $password_At_List_one_Upper_Case

password_At_List_One_Numeric_Number="^[a-zA-Z0-9]*(.*[A-Z].*{1}+)(.*[0-9].*{1}+)[a-zA-Z0-9]*{7,40}$"
read -p "Enter The Password := " password

function checkPassword()
{
        if [[ ${#password} -ge 8 && $password =~ $password_At_List_One_Numeric_Number ]]
        then
                echo "Valid Password"
        else
                echo "Invalid Password"
        fi
}
checkPassword
