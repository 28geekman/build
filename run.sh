#!/bin/bash

echo "[+] Running system updates"
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt full-upgrade -y


echo "[+] Installing i3 window manager"
sudo apt install -y xorg xinit i3 firefox-esr
sudo apt install -y rofi feh picom dunst lxappearance fonts-font-awesome thunar network-manager-gnome lxpolkit vim libnotify-bin

echo "[+] Copying xinitrc"
cp files/xinitrc ~/.xinitrc

echo "[+] Copying background image"
sudo mkdir /usr/share/backgrounds
sudo cp files/arco-wallpaper.jpg /usr/share/backgrounds
cp files/config ~/.config/i3/config




