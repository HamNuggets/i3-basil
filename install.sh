echo "Making working directory..."
mkdir ~/basili3
cd ~/basili3
echo "Done."
echo "Installing dependencies..."
sudo pacman -Qqen > dependencies.txt
sudo pacman -S --noconfirm - < dependencies.txt
git clone https://aur.archlinux.org/polybar.git
git clone https://aur.archlinux.org/nerd-fonts-fira-code.git
git clone https://aur.archlinux.org/ttf-material-design-icons.git
git clone https://aur.archlinux.org/ttf-font-awesome-4.git
git clone https://aur.archlinux.org/nerd-fonts-hermit.git
cd polybar
makepkg --noconfirm -si
cd ..
cd nerd-fonts-fira-code
makepkg --noconfirm -si
cd ..
cd ttf-material-design-icons
makepkg --noconfirm -si
cd ..
cd ttf-font-awesome-4
makepkg --noconfirm -si
cd ..
cd nerd-fonts-hermit
makepkg --noconfirm -si
cd ..
echo "Done."
echo "Applying custom build..."
git clone https://github.com/UwUham/galaxy-rice-dots.git
cd galaxy-rice-dots/.config
echo "Backing up old configs to ~/.config-bak."
cp -r ~/.config ~/.config-bak
cp -r * ~/.config 
mkdir -p ~/Pictures
cd ~/Pictures 
git clone https://github.com/UwUham/wallpapers.git
echo "Done."
echo "Removing working directory..."
rm -rf ~/basili3
echo "Done."
echo "Reboot into your new i3 install to see your changes."