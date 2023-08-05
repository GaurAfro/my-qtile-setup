#!/usr/bin/env bash


# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo nala install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo nala install -y build-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Make Repository directory
mkdir ~/Repository

# Install Qtile
bash ~/my-qtile-setup/qtile-install.sh

# Install suckless-tools, sxhkd, polybar, rofi, dunst, libnotify-bin, unzip
sudo nala install -y suckless-tools sxhkd polybar rofi dunst libnotify-bin unzip

# Support for Intel/AMD microcode
# sudo nala install -y amd64-microcode
sudo nala install -y intel-microcode

# Network File Tools/System Events
sudo nala install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo nala install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo nala install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal (eg. alacritty, kitty, tilix)
sudo nala install -y alacritty kitty tilix

# Sound packages
sudo nala install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Neofetch
sudo nala install -y neofetch

# Network Manager
sudo nala install -y network-manager network-manager-gnome 

# Installation for Appearance management
sudo nala install -y lxappearance 

# Browser Installation (eg. chromium)
sudo nala install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo nala install -y nitrogen 
sudo nala install -y feh
 
# Fonts and icons for now
sudo nala install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo nala install -y exa bat


# Printing and bluetooth (if needed)
# sudo nala install -y cups system-config-printer simple-scan
sudo nala install -y bluez blueman

# sudo systemctl enable cups
sudo systemctl enable bluetooth

# Packages needed for window manager installation
sudo nala install -y picom rofi dunst libnotify-bin unzip 

# my favs
sudo nala install -y numlockx geany geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser geany-plugin-vimode scrot evince pdfarranger transmission-gtk gimp obs-studio mkvtoolnix-gui
sudo nala install -y mpv figlet qimgv l3afpad galculator redshift cpu-x galculator ghostwriter udns-utils whois curl

# Install Ly Display Manager
bash ~/my-qtile-setup/ly-install.sh


########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

bash ~/my-qtile-setup/nerd-fonts-installer.sh

\cp ~/my-qtile-setup/configs/* ~/


sudo nala autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
