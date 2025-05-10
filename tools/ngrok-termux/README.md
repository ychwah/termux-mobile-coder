# Run NGROK command on Termux for Android

## About NGROK

Ngrok is a tunneling service that allows developers to securely expose local servers and applications to the internet. It creates a secure, temporary URL that forwards traffic to your local machine, enabling easy testing, sharing, and debugging of web services without deploying them to a public server.

## Setup

The setup requires `wget` to run. If you have not installed it yet, run `pkg install wget` in Termux

1.   Get the installation script.  
    `wget https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/tools/ngrok-termux/install.sh`
2.  Make install script executable  
    `chmod +x install.sh`
3.  Run `install.sh`  
    `./install.sh`
4.  Remove `install.sh` after setting up ngrok  
    `rm install.sh`

## Uninstalling
Uninstall ngrok completely from Termux

1.   Get the uninstall script.  
    `wget https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/tools/ngrok-termux/uninstall.sh`
2.  Make install script executable  
    `chmod +x uninstall.sh`
3.  Run `uninstall.sh`  
    `./uninstall.sh`
4.  Remove `uninstall.sh` after removing ngrok  
    `rm uninstall.sh`