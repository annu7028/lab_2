#!/bin/bash
# Authors : Anna Nuggehalli
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter file Name:"
read fileName
echo "Enter Expression: "
read expression

grep $expression $fileName

echo "Calculating the amount of Phone numbers..."
#counts all the phone numbers in the regex_practice.txt
#-c is what counts the amount 
grep -c '[0-9]\{3\}[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $fileName
echo "Amount of Phone numbers calculated!"

#count the number of e-mails
echo "Calculating number of e-mail adresses..."
grep -c '@' $fileName
echo "Number of e-mail adresses counted!"

#grab all phone numbers starting w/ 303 and list them in 
#a seperate file named phone_results.txt
grep '303[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $fileName > phone_results.txt
echo "303 numbers in phone_results.txt"

#List all of the emails from geocities.com 
#store the results in "email_results.txt"
grep '@geocities.com' $fileName > email_results.txt
echo "@geocities.com e-mails in email_results.txt"

#List all of the lines that match a command-line 
#regular expresion and store the results in 
#"command_results.txt"
grep $1 $fileName > command_results.txt

echo $0
echo $1
