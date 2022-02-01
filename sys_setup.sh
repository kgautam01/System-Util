#!bin/bash

# Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
mv google-chrome-stable_current_amd64.deb $HOME/Downloads/
sudo dpkg -i $HOME/Downloads/google-chrome-stable_current_amd64.deb

# Anaconda and crucial packages
wget "https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh"
mv Anaconda3-2021.11-Linux-x86_64.sh $HOME/Downloads/
bash $HOME/Downloads/Anaconda3-2021.11-Linux-x86_64.sh
source .bashrc
conda activate base
conda update --all
conda install -y -c anaconda numpy pandas scikit-learn
conda install -y -c conda-forge parallel matplotlib tree byobu

# Build-essentials and version control
sudo apt update
sudo apt install -y vim
sudo apt install -y build-essential
sudo apt-get -y install git
sudo snap install -y --classic code

# Customizations and entertainment in the OS
sudo snap install -y spotify
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions
 # restart gnome by ALT+F then press 'r'
