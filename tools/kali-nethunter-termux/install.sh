#!/data/data/com.termux/files/usr/bin/bash

setup() {
    echo -e "\e[32mRunning \"termux-setup-storage\" command\e[0m"
    termux-setup-storage

    echo -e "\e[32mDownloading install-nethunter-termux script...\e[0m"
    wget -O $HOME/install-nethunter-termux https://offs.ec/2MceZWr
    chmod +x $HOME/install-nethunter-termux
    
    echo -e "\e[32mRunning \"install-nethunter-termux\" command\e[0m"
    bash "$HOME/install-nethunter-termux"

    rm $HOME/install-nethunter-termux
}

install() {
    setup

    echo -e "\e[32mAdding \"nethunter\" command...\e[0m"
    mv $HOME/nethunter $PREFIX/bin/nethunter

    echo "Command \"nethunter\" was successfully installed."
    echo -e "\e[32mRun nethunter command by using \"nethunter\"\e[0m"

    echo "See https://www.kali.org/docs/nethunter/nethunter-rootless/#usage for usage"
}


install