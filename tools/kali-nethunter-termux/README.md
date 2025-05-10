# Run Kali Nethunter command on Termux for Android

## About Kali Nethunter

Kali Linux NetHunter is a mobile penetration testing platform for Android devices, offering security tools for wireless and network testing on smartphones and tablets. It is widely used by cybersecurity professionals for on-the-go security assessments.

## Setup

The setup requires `wget` to run. If you have not installed it yet, run `pkg install wget` in Termux

1.   Get the installation script.  
    `wget https://raw.githubusercontent.com/ychwah/termux-mobile-coder/master/tools/kali-nethunter-termux/install.sh`
2.  Make install script executable  
    `chmod +x install.sh`
3.  Run `install.sh`  
    `./install.sh`
4.  Remove `install.sh` after setting up nethunter  
    `rm install.sh`