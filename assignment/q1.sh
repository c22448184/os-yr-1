#!/bin/bash

# note that for command history to work properly, you need to close the terminal and then reopen your terminal

PS3="Please enter a number from 1-6 for your option please: "

select opt in "List files" "Show free disk space" "Show system path" "Display command history" "Backup files" "Exit"
do
    case $opt in
        "List files")
            echo "$opt - Listing all files in current directory:"
            ls;;

        "Show free disk space")
            echo "$opt:"
            df -H;;

        "Show system path")
            echo "$opt:"
            echo "$PATH";;

        "Display command history")
            echo "$opt:"
            HISTFILE=~/.bash_history # set the variable HISTFILE to the .bash_history file, not quite sure why but it won't work without it
            set -o history # enable the history feature in the bash shell so that commands will be saved to .bash_history
            history;; #  display the contents of the history file

        "Backup files")
            echo "$opt." 
            read -p "Please enter the path to your directory: " mydir # read user input for mydir
            echo "Your directory: $mydir"

            cp -R $mydir BackupFolder # copy recursively the contents of mydir to the backup directory 
            echo "Backup contents:"
            ls BackupFolder;; # list the contents of the backup directory

        "Exit")
            echo "Exiting, thank you."
            break;;

        *)
            echo "Invalid option.";;
    esac
done