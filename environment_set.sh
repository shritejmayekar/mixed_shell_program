#! /bin/bash
#usersecret="dH34xJaa23"
if [ -z ${usersecret+x} ]
then 
	source ~/.bash_profile
	echo "usersecret is unset"
else 
	echo "usersecret is set to '$usersecret'"
fi

