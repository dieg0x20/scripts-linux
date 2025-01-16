#!/bin/bash

#baner


MAKER_FILE="$HOME/.password_checked"
PASSWORD="eliot"

if [ -f "$MAKER_FILE"]; then
	exit 0
fi

echo -n "Digite a senha de acesso: "
read -s input_password
echo

if [ "$input_password" == "$PASSWORD" ]; then
	echo "Senha correta. Acesso liberado"
	touch "$MAKER_FILE"
	bash
else
	echo "Senha incorreta. Sistema travado"
	cmatrix &
	trap '' 2 20
	while true; do
		sleep 1
	done
fi
