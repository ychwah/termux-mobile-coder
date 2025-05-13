# Run NGROK command on Termux for Android

## About NGROK

Ngrok is a tunneling service that allows developers to securely expose local servers and applications to the internet. It creates a secure, temporary URL that forwards traffic to your local machine, enabling easy testing, sharing, and debugging of web services without deploying them to a public server.

## Setup

The setup requires `wget` to run and assumes an updated and upgraded termux environment. If you have not done so, run `pkg update && pkg upgrade && pkg install wget` in Termux

Get the installation script.  
```sh 
    wget -O - https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/tools/ngrok-termux/install.sh | bash
```

## Uninstalling
Uninstall ngrok completely from Termux

Get the uninstall script.  
```sh 
    wget -O - https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/tools/ngrok-termux/uninstall.sh | bash
```