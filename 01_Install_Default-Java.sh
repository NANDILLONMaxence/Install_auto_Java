#!/bin/bash

# Variable pour la couleur des messages
color_B="\033[1;34m"  # Bleu clair
color_R="\033[1;31m"  # Rouge clair
color_G="\033[1;32m"  # Vert clair
reset_color="\033[0m"  # Réinitialisation de la couleur

# Fonction pour afficher les messages avec couleur et délai
show_message() {
    echo -e "${color_B}$1${reset_color}"
    sleep 1.5
}

# Fonction pour afficher les messages d'erreur avec couleur et délai
error_message() {
    echo -e "${color_R}$1${reset_color}"
    sleep 1.5
}

# Fonction pour afficher les messages avec couleur et délai
info_message() {
    echo -e "${color_G}$1${reset_color}"
    sleep 1.5
}

# Check if Java is already installed
if ! command -v java &> /dev/null; then
    show_message "Java is not currently installed."

    # Ask the user if they want to install Java JRE or JDK
    show_message "Do you want to install Java JRE (1) or Java JDK (2)? Enter 1 or 2 : "
    read -p "" java_option

    # Install Java JRE
    if [ "$java_option" == "1" ]; then
        sudo apt install -y default-jre
        info_message "Java jre OK."
        java -version
    # Install Java JDK
    elif [ "$java_option" == "2" ]; then
        sudo apt install -y default-jdk
        info_message "Java jdk OK."
        java -version
    else
        error_message "Invalid choice. Exiting the script."
        exit 1
    fi
else
    info_message "Java is already installed:"
    java -version
fi
