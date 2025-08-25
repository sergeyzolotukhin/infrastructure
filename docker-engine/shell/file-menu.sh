#!/bin/bash
# Bash Menu Script Example

echo "The following archives were found; select one:"

# set the prompt used by select, replacing "#?"
PS3="Use number to select a file or 'stop' to cancel: "

# allow the user to choose a file
select filename in *.sh
do
    # leave the loop if the user says 'stop'
    if [[ "$REPLY" == stop ]]; then break; fi

    # complain if no file was selected, and loop to ask again
    if [[ "$filename" == "" ]]
    then
        echo "'$REPLY' is not a valid number"
        continu
    fi

    # now we can use the selected file
    echo "$filename installed"

    # it'll ask for another unless we leave the loop
    break
done
