#!/bin/bash

# prompt the user for input and store it in a variable
 read -p "Enter 'google.com' to ping, anything else is invalid:" website
  echo "Enter 'google.com' to ping, anything else is invalid:"
         read website

 # The input validation
 if [[ "$website" != "google.com" ]]
  then

   echo "Invalid input. Please enter 'google.com'"

  exit 1

 fi
 # ping the website five times and store the results in a text file
 ping -c 5 google.com > ping_results.txt

 # print success message to the console
 echo "Ping results saved to ping_results.txt" 
