#! /bin/bash -x

# read -p "Enter the name:" name
# Cheat code

# # pattern match ^ denotes first letter [a-z] remaining
# echo $name | awk '/^[A-Z][a-z]/'
# # pattern match find length of string 
# echo $name | awk 'length($name) >=3 { print $name }'

# # pattern match find pattern along with the length of tring.
# echo $name | awk '/^[A-Z][a-z]{3}/'

    
# echo $name | awk '/[abc](.?)[a-z]/'
# echo $name | awk '/^(\s?\.?[a-zA-Z]+)+$/'
# abc.xyz@bl.co.in (abc,bl and co)
    # if [[ "$email" =~ ^[abc]+\.[a-z]+@[bl]+\.[a-zA-Z]{2,4}$ ]]

# email
# while true
# do
#     read -p "Enter the email: " email
#     echo
#     if [[ "$email" =~ ^[abc]+\.[a-z]+@[bl]+\.[co]+\.[a-zA-z]{2,4}$ ]]
#     then
#         echo "Email address $email is valid."
#         break
#     else
#         echo "Email address $email is invalid."
#     fi
# done
# \d{1,2}[.-\s]?
    # if [[ "$phone" =~ [0-9]{1,2}[.-\s]?[0-9]{10} ]]
# phone number
while true
do
    read -p "Enter the phone: " phone
    echo
    if [[ "$phone" =~ [0-9]{1,2}[.-\s]?[0-9]{4,13}$ ]]
    then
        echo "phone no $phone is valid."
        break
    else
        echo "phone no $phone is invalid."
    fi
done


