pass="abc@1hhWwhhw"

#Password Validation

punct="[@_-+#]{1}"

if [[ ${#pass} -ge 8 ]] &&  [[ $pass =~ [[:upper:]] ]] && [[ $pass =~ [[:lower:]] ]] && [[ $pass =~ [[:digit:]] ]] && [[ $pass =~ [[:punct:]] ]]
then
        echo "Valid password"
else
        echo "Invalid password"
fi
