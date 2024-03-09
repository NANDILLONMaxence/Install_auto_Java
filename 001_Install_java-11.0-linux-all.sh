#!/bin/bash

# Update the package index
sudo apt update

# Check if Java is already installed
if ! command -v java &> /dev/null; then
    echo "Java is not currently installed."
    
    # Ask the user if they want to install Java JRE or JDK
    read -p "Do you want to install Java JRE (1) or Java JDK (2)? Enter 1 or 2 : " java_option

    # Install Java JRE
    if [ "$java_option" == "1" ]; then
        sudo apt install -y default-jre
        java -version
    # Install Java JDK
    elif [ "$java_option" == "2" ]; then
        sudo apt install -y default-jdk
        javac -version
    else
        echo "Invalid choice. Exiting the script."
        exit 1
    fi
else
    echo "Java is already installed:"
    java -version
fi