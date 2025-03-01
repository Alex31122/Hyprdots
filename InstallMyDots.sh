#!/bin/bash

sudo pacman -Syu
sudo pacman -S neovim
sudo pacman -S zellij
sudo pacman -S ranger
sudo pacman -S rust
sudo pacman -S unzip
sudo pacman -S eza

sudo pacman -S bluez
sudo pacman -S bluez-utils
sudo pacman -S blueman

cargo install tock
sudo cp ~/.cargo/bin/tock /bin

wget https://gitlab.com/jallbrit/bonsai.sh/-/raw/master/bonsai.sh -O bonsai.sh 
chmod +x bonsai.sh
sudo mv bonsai.sh /bin

sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service

cp -r Downloads ~/Downloads
cp -r hypr/ kitty/ waybar/ wpaperd/ ~/.config/

mkdir ~/Clone && cd ~/Clone
git clone https://aur.archlinux.org/yay.git && cd yay/
makepkg -si

sudo cp ~/Downloads/CascadiaCode.zip ~/Downloads/FiraCode.zip /usr/share/fonts/
cd /usr/share/fonts/

sudo unzip CascadiaCode.zip
sudo rm LICENCE README.md
sudo unzip CascadiaCode.zip
sudo rm LICENCE README.md

fc-cache -f -v

git clone https://github.com/NvChad/starter ~/.config/nvim

yay
yay -S okular 
# yay -S zathura
# yay -S zathura-pdf-mupdf

yay -S waybar
yay -S otf-font-awesome
yay -S hyprpaper
yay -S hyprpicker
yay -S hyprshot
yay -S clipse
yay -S wpaperd
yay -S wlogout
yay -S zen-browser-bin
yay -S cava

# Hyprshot command
# hyprshot -m region -zdo ~/Images/Screenshot/

# reboot
