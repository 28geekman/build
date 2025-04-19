#!/bin/bash

wrapper() {
	echo "[+] Running system updates"
    sudo apt update -y
    sudo apt upgrade -y
    sudo apt autoremove -y
    sudo apt full-upgrade -y
    
    
    echo "[+] Installing i3 window manager"
    sudo apt install -y xorg xinit i3 firefox-esr
    sudo apt install -y rofi feh picom dunst arc-theme lxappearance fonts-firacode fonts-font-awesome thunar polybar network-manager-gnome lxpolkit vim libnotify-bin
    
    echo "[+] Copying xinitrc"
    cp files/xinitrc ~/.xinitrc
    
    echo "[+] Copying background image"
    sudo mkdir /usr/share/backgrounds
    sudo cp files/arco-wallpaper.jpg /usr/share/backgrounds
    
    echo "[+] Copying config files"
    cp files/config ~/.config/i3/config

    echo "[+] Copying polybar config"
    mkdir ~/.config/polybar
    cp files/config.ini ~/.config/polybar
    cp files/launch.sh ~/.config/polybar
    chmod +x ~/.config/polybar/launch.sh

}







