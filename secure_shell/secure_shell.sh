#!/bin/bash

#baner
clear 

echo -e "\033[1m\033[33m


██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
███████║███████║██║     █████╔╝ █████╗  ██████╔╝
██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝                                                                    

"
MAKER_FILE="$HOME/.password_checked"
PASSWORD="eliot"

if [ -f "$MAKER_FILE" ]; then
	exit 0
fi


disable_commands() {
    trap '' 2  # Ignora o Ctrl+C (SIGINT)
    trap '' 3  # Ignora o Ctrl+\ (SIGQUIT)
    trap '' 15 # Ignora o sinal de término (SIGTERM)
}

disable_commands

echo -n "Digite a senha de acesso: "
read -s input_password
echo
  
if [ "$input_password" == "$PASSWORD" ]; then
	touch "$MAKER_FILE"
	clear
	bash
else
	echo ""
	echo -e "\e[1;31m  You Entered wrong Details!\e[0m"
	sleep 1
	cmatrix -L
fi
