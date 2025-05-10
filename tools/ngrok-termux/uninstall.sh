#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[32mDeleting binary ngrok from $HOME/.tmd/bin/ngrok\e[0m"
rm $HOME/.tmd/bin/ngrok

echo -e "\e[32mDeleting command from $PREFIX/bin/ngrok\e[0m"
rm $PREFIX/bin/ngrok

echo -e "\e[32mSuccess! ngrok was removed from the system.\e[0m"