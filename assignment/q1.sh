#!/bin/bash

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
            echo -e $(cat ~/.bash_history);;

        "Backup files")
            echo "$opt." 
            read -p "Please enter the path to your directory: " mydir # read user input for mydir
            echo "Your directory: $mydir"

            mkdir BackupFolder # make a new backup directory
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