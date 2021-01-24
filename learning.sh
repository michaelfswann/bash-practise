#!/usr/bin/bash

# using which CMD in terminal gives us file path of command eg which bash returns /usr/bin/bash

# chmod +x myscript.sh change mode, add executable property (stops permisisions denied error)

# echo prints to terminal

# VARIABLES (vars are uppercase by convention)

# NAME="Michael"

# use read with -p (prompt)

# read -p "Enter your name: " NAME

# echo Hello $NAME!

# # simple if statement

# if [ "$NAME" == "mike" ]
# then
#     echo "your name is mike"
# elif [ "$NAME" == "michael" ]
# then
#     echo "your name is michael"
# else
#     echo "your name is neither mike or michael"
# fi

# TIME="$(date)"

# echo $TIME
# echo hi

# -n skips new line for next command (eg echos on same line)

echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  UK)
    echo "English"
    ;;

  Germany | Austria)
    echo "German"
    ;;

  France | Belgium)
    echo "French"
    ;;

  *)
    echo "unknown"
    ;;
esac



exit