#! bin/bash -x

pincode=421506

regex="^[0-9]{6}$"

if [[ $pincode =~ $regex ]]
then
    echo "yes"
else
    echo "no"
fi
