#!/bin/bash

echo "[+] Running system updates"
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt full-upgrade -y


echo "[+] Installing i3 window manager"
sudo apt install -y xorg xinit i3
sudo apt install -y rofi feh picom dunst lxappearance fonts-font-awesome thunar network-manager-gnome lxpolkit vim

echo "[+] Copying xinitrc"
cp files/xinitrc ~/.xinitrc

