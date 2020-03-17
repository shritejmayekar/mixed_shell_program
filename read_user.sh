#! /bin/bash

# 1. Input using the read command
#echo "Enter the names:"
#read name1 name2 name3
#echo "Entered names are: $name1 ,$name2 , $name3"

# 2.Input using the read command and a prompt at read
#read -p "username:" user_var   # Normal Input
#read -sp "password:" pass_var  # Password Input
#echo
#echo "username:$user_var"
#echo "password:$pass_var"

# 3.Read username as an set of array
#echo "Enter names:"
#read -a names
#echo "Names:${names[0]}, ${names[1]}"

echo "Enter name: "
read
echo "Name : $REPLY"

