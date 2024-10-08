# Install Auto Java on All Linux

This automated script allows you to easily install Java JRE or JDK on any Linux system. It uses the default OpenJDK packages to streamline the installation process.

## Prerequisites

Make sure you have `sudo` or administrative privileges on your Linux system to run this script. It uses `apt` to manage packages, so it is designed for Debian/Ubuntu-based distributions.

## Usage Instructions

1. Clone the repository or download the `01_Install_Default-Java.sh` script:

    ```bash
    git clone https://github.com/NANDILLONMaxence/Install_auto_Java.git
    ```

2. Navigate to the script directory:

    ```bash
    cd Install_auto_Java
    ```

3. Give execute permissions to the script:

    ```bash
    chmod +x 01_Install_Default-Java.sh
    ```

4. Run the script:

    ```bash
    ./01_Install_Default-Java.sh
    ```

5. Follow the on-screen instructions to choose to install Java JRE (option 1) or Java JDK (option 2).

## Notes

- If Java is already installed on your system, the script will display the current version.
- The script uses the default OpenJDK packages for Java installation.
- Command purge : sudo apt-get purge openjdk* icedtea-* openjdk-*

---- 
