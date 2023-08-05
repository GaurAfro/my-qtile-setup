#!/bin/bash

# checking if nala is available
echo "checking if 'nala' is installed..."
if ! command -v timeout &> /dev/null; then
    echo "'nala' could not be found. installing..."
    sudo apt install nala -y
else
    echo "'nala' is already installed."
fi

# upgrading the system using nala
echo "upgrading the system using nala..."
sudo nala upgrade -y

# changing the directory to 'Repository'
echo "changing directory to 'Repository'..."
cd ~/Repository

# checking if timeout is available
echo "checking if timeout is installed..."
if ! command -v timeout &> /dev/null; then
    echo "timeout could not be found. installing..."
    sudo nala install timeout -y
else
    echo "timeout is already installed."
fi

# installing other dependencies
echo "installing dependencies: build-essential, libpam0g-dev, libxcb-xkb-dev, git..."
sudo nala install build-essential libpam0g-dev libxcb-xkb-dev git -y

# cloning the repository
echo "cloning the ly repository..."
git clone --recurse-submodules https://github.com/fairyglade/ly

# changing the directory to `ly`
echo "changing directory to 'ly'..."
cd ly

# compiling the source
echo "compiling the source..."
make

# testing in the configured tty or terminal emulator
echo "testing in the configured tty (tty2 by default) or terminal emulator..."
timeout --signal=sigint 3s make run

# installing ly and the systemd service file
echo "installing ly and the provided systemd service file..."
sudo make install installsystemd

# checking if the display manager service link exists and delete it
if [ -f "/etc/systemd/system/display-manager.service" ]; then
    echo "removing /etc/systemd/system/display-manager.service..."
    sudo rm /etc/systemd/system/display-manager.service
else
    echo "/etc/systemd/system/display-manager.service does not exist."
fi

# enabling the service
echo "enabling the ly service..."
sudo systemctl enable ly.service

# disabling getty on ly's tty
echo "disabling getty on ly's tty to prevent 'login' from spawning on top of it..."
sudo systemctl disable getty@tty2.service

echo "script completed!"
