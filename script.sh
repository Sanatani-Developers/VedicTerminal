#!/usr/bin/env bash

cat .slokascript > ~/.slokascript
cat .sloka > ~/.sloka

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	OSBASHRC=bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OSBASHRC=bash_profile
fi
if ! grep -Fxq '~/.sloka' ~/.$OSBASHRC; then
	echo $'\nchmod +x ~/.sloka\n~/.sloka\nalias clear="clear;~/.sloka"' >> ~/.$OSBASHRC
fi

OSBASHRC="zshrc"
if [[ -f ~/.$OSBASHRC ]]; then
	if ! grep -Fxq '~/.sloka' ~/.$OSBASHRC; then
		echo $'\nchmod +x ~/.sloka\n~/.sloka\nalias clear="clear;~/.sloka"' >> ~/.$OSBASHRC
	fi
fi