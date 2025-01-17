#!/bin/bash

# Verifica se o script está sendo executado como root
if [ "$(id -u)" -ne 0 ]; then
    echo -e "\033[31mErro: você não pode realizar esta operação a menos que seja root.\033[0m"
    echo -e "\033[33mPor favor, execute como \033[1m\033[32msudo\033[0m."
    exit 1
fi

clear
echo
echo -e "\033[32m\033[1m{───────────────────────────────────────────────────}"
echo -e "\033[33m\033[1m   Instalando Pacotes Necessários! Por Favor Aguarde" | pv -qL 10

pacman -Syu
pacman -S cmatrix
pacman -S pv

echo -e "\033[31m\033[1m        INSTALAÇÃO COMPLETA  \033[32m[\033[36m✓\033[32m]" | pv -qL 12
echo -e "\033[33m\033[1m]────────────────────────────────────────────["
