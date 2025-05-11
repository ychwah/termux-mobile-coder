# Run PHPMyAdmin on Termux for Android

## About PHPMyAdmin

PHPMyAdmin is a free, open-source web-based tool written in PHP that allows users to manage MySQL and MariaDB databases through a user-friendly graphical interface. It simplifies tasks like creating, modifying, and deleting databases, tables, and records, as well as executing SQL queries, importing/exporting data, and managing user permissions. 

## Setup

The setup requires `wget` to run and assumes an updated and upgraded termux environment. If you have not done so, run `pkg upgrade && pkg update && pkg install wget` in Termux

1.   Get the installation script.  
    ```sh 
    wget https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/software/phpmyadmin/install.sh
    ```
2.  Make install script executable  
    ```sh
    chmod +x install.sh
    ```
3. Run ./install.sh
    ```sh
    ./install.sh
    ```