
#!/usr/bin/env bash

# Remove the EXTERNALLY-MANAGED file so pip works again
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

# Dependencies
sudo apt install -y python3-full python3-pip libpangocairo-1.0-0 python3-cffi python3-xcffib git sxhkd

# Install cairocffi using pip
pip install --no-cache-dir cairocffi

# move to Repository directory
cd ~/Repository

# Clone the Qtile Source Code from GitHub
git clone https://github.com/qtile/qtile.git

# Install Qtile
cd qtile
pip install .

# Install psutil
pip install psutil

# XSessions and qtile.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi
``
# Adding qtile.desktop to Lightdm xsessions directory
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Exec=qtile start
Type=Application
Keywords=wm;tiling
EOF
sudo cp ./temp /usr/share/xsessions/qtile.desktop;rm ./temp
u=$USER
sudo echo "Exec=/home/$u/.local/bin/qtile start" | sudo tee -a /usr/share/xsessions/qtile.desktop
