# Run Laravel on Termux for Android

## About Laravel

Laravel is a popular open-source PHP framework designed for building modern, scalable web applications. It offers an elegant syntax, robust tools, and features like routing, ORM (Eloquent), middleware, authentication, and task scheduling, simplifying development and promoting maintainable code.

## Setup

The setup requires `wget` to run and assumes an updated and upgraded termux environment. If you have not done so, run `pkg upgrade && pkg update && pkg install wget` in Termux

Get the installation script and run it.  
```sh 
    wget -O - https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/framework/laravel/install.sh | bash
```