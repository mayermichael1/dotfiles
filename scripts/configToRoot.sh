#!/bin/zsh

rm ~/.zshenv
ln -sf ~/.config/.zshenv ~/.zshenv

rm ~/.profile
ln -sf ~/.config/.profile ~/.profile
