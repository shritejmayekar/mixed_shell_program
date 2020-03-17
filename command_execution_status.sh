#! /bin/bash


hello
status=$?
[ $status -eq 0 ] && echo "$cmd command was successful" || echo "$cmd failed"

ls
status=$?
[ $status -eq 0 ] && echo "$cmd command was successful" || echo "$cmd failed"

