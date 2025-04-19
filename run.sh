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
    
    

}

post_install() { # Run this file after starting xinitrc
    echo "[+] Copying config files"
    cp files/config ~/.config/i3/config

    echo "[+] Copying polybar config"
    mkdir ~/.config/polybar
    cp files/config.ini ~/.config/polybar
    cp files/launch.sh ~/.config/polybar
    chmod +x ~/.config/polybar/launch.sh
}
install_tools() {
    echo "[+] Installing tools"
    sudo apt install -y curl wget git unzip net-tools dnsutils python3 python3-pip python3-venv build-essential libssl-dev libffi-dev lsb-release ca-certificates
    sudo apt install -y nmap whois ffuf whatweb gobuster netcat-traditional
    sudo apt install -y hydra john hashcat sqlmap smbclient cewl onesixtyone nbtscan
    sudo apt install -y  rlwrap socat
    sudo chown -R $USER:$USER /opt
    mkdir /opt/tools
    
}

wrapper
install_tools
#post_install






