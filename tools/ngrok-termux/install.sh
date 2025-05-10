#!/data/data/com.termux/files/usr/bin/bash

download_ngrok() {
    case `dpkg --print-architecture` in
    aarch64)
        archBuild="arm64" ;;
    arm)
        archBuild="arm" ;;
    armhf)
        archBuild="arm" ;;
    *)
        echo "Unsupported architecture!"
        exit
    esac

    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-${archBuild}.tgz -O $HOME/ngrok.tgz
    tar -xzvf $HOME/ngrok.tgz
    rm $HOME/ngrok.tgz

    if command -v ngrok > /dev/null 2>&1; then
        echo -e "\e[32mDeleting current ngrok command...\e[0m"
    fi

    rm $PREFIX/bin/ngrok

    echo -e "\e[32mCopying binary ngrok to $HOME/.tmd/bin/ngrok\e[0m"
    chmod +x $HOME/ngrok
    mkdir -p $HOME/.tmd/bin/
    mv $HOME/ngrok $HOME/.tmd/bin/ngrok

    echo -e "\e[32mCopying ngrok command to $PREFIX/bin/ngrok\e[0m"
    echo -e '#!/data/data/com.termux/files/usr/bin/bash\ntermux-chroot -- $HOME/.tmd/bin/ngrok "$@"' > ngrok
    chmod +x ngrok
    mv ngrok $PREFIX/bin/ngrok
}


install () {
    echo -e "\e[32mInstalling required packages ...\e[0m"
    pkg install proot resolv-conf -y
    
    echo -e "\e[32mDownloading ngrok ...\e[0m"
    download_ngrok

    echo "Please login to https://dashboard.ngrok.com/get-started/your-authtoken"
    read -p "Token (required): " token

    if [ -z "$token" ]; then
        echo "No token provided. Please manually add it via " \
        "ngrok config add-authtoken <auth-token>"
    else
        ngrok config add-authtoken $token
    fi

    echo "Command \"ngrok\" was successfully installed."
    echo -e "\e[32mRun ngrok command by using \"ngrok\"\e[0m"

}

install