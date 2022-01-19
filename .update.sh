#!/bin/bash
PS4='LINENO:'

            ###### INFOMATIONAL ######
# 1. Logs are stored in /var/log/update-script.log

            ######### ISSUES #########
# 1. Exit status Codes are not always reliable



list_of_commands=(
'apt update -y'
'apt upgrade -y'
'apt dist-upgrade -y'
'apt full-upgrade -y'
'apt autopurge -y'
'apt autoremove -y'
'apt autoclean -y'
)

system_update(){
for CMD in "${list_of_commands[@]}"
do
        echo "===================="
        echo "Executing $CMD"
        echo ""
        $CMD

        if
                [ $? -eq 0 ]
        then
                echo "$CMD was successfully run, exit status code: $?"
                echo ""
        elif
                [ $? -ne 0 ]
        then
                echo "**ERROR**: $CMD was not successful! Exit status code $?"
        fi
done

echo "Exit status code:  $?"

if
        [ $? -eq 0 ]
then
       echo "System successfully updated last on $(date)" > /var/log/update-script.log
elif
        [ $? -ne 0 ]
then
       echo "Error running $CMD on $(date), exit status code: $?" > /var/log/update-script.log
fi
}

system-update
