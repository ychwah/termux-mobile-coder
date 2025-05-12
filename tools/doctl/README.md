# Run DigitalOcean DOCTL on Termux for Android

## About Digitalocen doctl

Digitalocen Doctl is a tool that simplifies deploying and managing applications on DigitalOcean. It offers streamlined CLI features, enabling developers to efficiently create, configure, and monitor droplets, databases, and other resources on DigitalOcean's platform.

## Setup

The setup requires `wget` to run and assumes an updated and upgraded termux environment. If you have not done so, run `pkg upgrade && pkg update && pkg install wget` in Termux

Get the installation script and run it.  
```sh 
    wget -O - https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/tools/doctl/install.sh | bash
```