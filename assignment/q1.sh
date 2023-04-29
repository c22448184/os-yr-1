#!/bin/bash

#!/bin/bash

PS3="Please enter a number from 1-6 for your option please: "

select opt in "List files" "Show free disk space" "Show system path" "Display command history" "Backup files" "Exit"
do
    case $opt in
        "List files")
            echo "$opt";;
        "Show free disk space")
            echo "$opt";;
        "Show system path")
            echo "$opt";;
        "Display command history")
            echo "$opt";;
        "Backup files")
            echo "$opt";;
        "Exit")
            echo "Exiting, thank you."
            break;;
        *)
            echo "Invalid option.";;
    esac
done