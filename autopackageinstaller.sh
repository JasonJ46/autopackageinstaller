#!/bin/bash


user=$(whoami)


read -r -p "This will update your system and install the latest version of the follwing packages  brave-browser ranger discord appimagelauncher git gnome-weather gnome-disk-utility mpv steam bashtop are you sure $user? (run script in a directory labled 'git-clones') [Y/n] " input

case $input in
      [yY][eE][sS]|[yY])
            echo "You say Yes"
            ;;
      [nN][oO]|[nN])
            echo "You say No"
            ;;
      *)
            echo "Invalid input..."
            exit 1
            ;;
esac

#Packages to be installed

sudo pacman -Rcns firefox --noconfirm

sudo pacman -Syyuu --noconfirm

sudo pacman -S brave-browser ranger discord appimagelauncher git gnome-weather gnome-disk-utility mpv steam bashtop wayland plasma-wayland-session unzip timeshift --noconfirm

#wget downloading section (appimage, ect)

wget -c https://github.com/balena-io/etcher/releases/download/v1.7.9/balena-etcher-electron-1.7.9-linux-x64.zip?d_id=ba9e796e-208e-4784-87a2-088b84e516e8R


git clone --recurse-submodules https://github.com/nullgemm/ly.git

cd ly/

make
sudo make install
sudo rm /etc/systemd/system/display-manager.service
sudo systemctl enable ly.service
cd ..
pwd
unzip balena-etcher-electron-1.7.9-linux-x64.zip\?d_id=ba9e796e-208e-4784-87a2-088b84e516e8R

rm -rf balena-etcher-electron-1.7.9-linux-x64.zip\?d_id=ba9e796e-208e-4784-87a2-088b84e516e8R

git clone https://github.com/JasonJ46/Wallpaper.git
cd Wallpaper/
rm LICENSE
cd ..

echo "The installer is now finished you may want to reboot for some changes to take effect."












