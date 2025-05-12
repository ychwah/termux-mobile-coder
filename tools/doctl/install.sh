install () {
    case `dpkg --print-architecture` in
    aarch64)
        archBuild="arm64" ;;
    amd64)
        archBuild="amd64";;
    i386)
        archBuild="386" ;;
    *)
        echo "Unsupported architecture!"
        exit
    esac

    wget https://github.com/digitalocean/doctl/releases/download/v1.125.1/doctl-1.125.1-linux-${archBuild}.tar.gz -O $HOME/doctl.tar.gz
    tar -xzvf $HOME/doctl.tar.gz
    rm $HOME/doctl.tar.gz

    echo -e "\e[32mCopying binary doctl to $HOME/.tmd/bin/doctl\e[0m"
    chmod +x $HOME/doctl
    mkdir -p $HOME/.tmd/bin/
    mv $HOME/doctl $HOME/.tmd/bin/doctl

    echo -e "\e[32mCopying doctl command to $PREFIX/bin/doctl\e[0m"
    echo -e '#!/data/data/com.termux/files/usr/bin/bash\nexport USER=$(whoami)\ngrun $HOME/.tmd/bin/doctl "$@"' > doctl
    chmod +x doctl
    mv doctl $PREFIX/bin/doctl

    echo "Command \"doctl\" was successfully installed."
    echo -e "\e[32mRun doctl command by using \"doctl\"\e[0m"
}

install