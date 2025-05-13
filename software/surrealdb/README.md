# Run SurrealDB on Termux for Android

## About SurrealDB

SurrealDB is an open-source, modern database designed for real-time applications. It combines features of document, graph, and key-value databases, offering flexible data modeling, powerful query capabilities, and built-in authentication and authorization. SurrealDB supports real-time synchronization, making it suitable for web, mobile, and IoT applications.

## Setup

The setup requires `wget` to run and assumes an updated and upgraded termux environment. If you have not done so, run `pkg update && pkg upgrade && pkg install wget` in Termux

Get the installation script and run it.  
```sh 
    wget -O - https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/software/surrealdb/install.sh | bash
```