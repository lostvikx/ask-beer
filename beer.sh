#!/bin/bash

echo "this is my first bash script"

# variables
HELLO="Hello, World!"
echo $HELLO

# Positional args { ./first_script.sh Vikram 21 }
echo "Name: $1"
echo "Age: $2"

# User inputs and loops
while true; do
  read -p "Do you wish to drink a beer? " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) 
      echo "Why so serious?" 
      exit;;
    * ) echo "Please answer yes or no"
  esac
done

# Conditionals
if [ $2 -lt 21 ] ; then
  echo "You are too young my dude."
else
  echo "Enjoy your beer $1!"
fi
