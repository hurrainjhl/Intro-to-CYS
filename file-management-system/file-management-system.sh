#!/bin/bash

function display_menu() {
    echo "File Management System"
    echo "1. View the list of files in the current directory"
    echo "2. Create a new file"
    echo "3. Delete an existing file"
    echo "4. Search for a file by name"
    echo "5. Exit"
}

function view_files() {
    echo "Files in the current directory:"
    ls -1
}

function create_file() {
    read -p "Enter the name of the new file: " filename
    if [ -e "$filename" ]; then
        echo "File '$filename' already exists."
    else
        touch "$filename"
        echo "File '$filename' created."
    fi
}

function delete_file() {
    read -p "Enter the name of the file to delete: " filename
    if [ -e "$filename" ]; then
        rm "$filename"
        echo "File '$filename' deleted."
    else
        echo "File '$filename' does not exist."
    fi
}

function search_file() {
    read -p "Enter the name of the file to search: " filename
    if [ -e "$filename" ]; then
        echo "File '$filename' found."
    else
        echo "File '$filename' not found."
    fi
}

while true; do
    display_menu
    read -p "Choose an option [1-5]: " choice
    case $choice in
        1) view_files ;;
        2) create_file ;;
        3) delete_file ;;
        4) search_file ;;
        5) echo "Exiting the file management system."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
