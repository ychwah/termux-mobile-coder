#!/data/data/com.termux/files/usr/bin/bash

install() {
    echo -e "\e[32mSetting up Termux Storage...\e[0m"
    termux-setup-storage
    echo -e "\e[32mSetting up your environment for Laravel...\e[0m"
    pkg install php mariadb nodejs composer git -y

    echo -e "\e[32mInstalling \"laravel\" installer...\e[0m"
    composer global require laravel/installer

    COMPOSER_BIN="$HOME/.composer/vendor/bin"

    if ! grep -q "export PATH=.*$COMPOSER_BIN" ~/.bashrc; then
        echo "export PATH=\$PATH:$COMPOSER_BIN" >> ~/.bashrc
        echo "Added $COMPOSER_BIN to ~/.bashrc"
    fi

    source ~/.bashrc

    echo -e "\e[32mLaravel was set up successfully...\e[0m"
    echo -e "Run \"composer create-project laravel/laravel <project name>\""
    echo "or \"laravel new <project name>\" to create a fresh Laravel project"
}

install