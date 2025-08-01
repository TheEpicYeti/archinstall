#!/bin/bash

echo ""
echo ""
echo "██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗ "
echo "██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝ "
echo "██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗"
echo "██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║"
echo "██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝"
echo "╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ "
echo ""
echo ""

echo ""
echo "▖▖▄▖▄ ▄▖▄▖▄▖▖ ▖▄▖  ▄▖▖▖▄▖▄▖▄▖▖  ▖"
echo "▌▌▙▌▌▌▌▌▐ ▐ ▛▖▌▌   ▚ ▌▌▚ ▐ ▙▖▛▖▞▌"
echo "▙▌▌ ▙▘▛▌▐ ▟▖▌▝▌▙▌  ▄▌▐ ▄▌▐ ▙▖▌▝ ▌"
echo ""

sudo -v 
sudo pacman -Syu

echo ""
echo "▄▖▖ ▖▄▖▄▖▄▖▖ ▖ ▄▖▖ ▖▄▖  ▖▖▄▖▖▖"
echo "▐ ▛▖▌▚ ▐ ▌▌▌ ▌ ▐ ▛▖▌▌   ▌▌▌▌▌▌"
echo "▟▖▌▝▌▄▌▐ ▛▌▙▖▙▖▟▖▌▝▌▙▌  ▐ ▛▌▐ "
echo ""

# git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
# cd ..
# rm -rf yay

echo ""
echo "▄▖▖ ▖▄▖▄▖▄▖▄▖▖   ▄▖▄▖▄▖▖▖▄▖▄▖▄▖▄▖"
echo "▐ ▛▖▌▐ ▐ ▐ ▌▌▌   ▙▌▌▌▌ ▙▘▌▌▌ ▙▖▚ "
echo "▟▖▌▝▌▟▖▐ ▟▖▛▌▙▖  ▌ ▛▌▙▖▌▌▛▌▙▌▙▖▄▌"
echo ""

sudo pacman -S --needed \
vulkan-radeon \
lib32-vulkan-radeon \
noto-fonts \
noto-fonts-emoji \
cronie \
qt6-multimedia-ffmpeg

echo ""
echo "▖▖▄ ▄▖  ▄▖▄▖▄▖▖▖▄▖▄▖▄▖▄▖"
echo "▙▘▌▌▙▖  ▙▌▌▌▌ ▙▘▌▌▌ ▙▖▚ "
echo "▌▌▙▘▙▖  ▌ ▛▌▙▖▌▌▛▌▙▌▙▖▄▌"
echo ""

sudo pacman -S --needed \
ark \
bluedevil \
breeze-gtk \
drkonqi \
ffmpegthumbs \
kactivitymanagerd \
kcron \
kde-cli-tools \
kde-gtk-config \
kde-inotify-survey \
kde-system-meta \
kdegraphics-thumbnailers \
kdeplasma-addons \
kdialog \
kinfocenter \
kio-admin \
kitty \
kjournald \
krdp \
kscreen \
ksshaskpass \
ksystemlog \
ksystemstats \
kwallet-pam \
kwalletmanager \
kwrited \
layer-shell-qt \
libkscreen \
milou \
ocean-sound-theme \
partitionmanager \
plasma-desktop \
plasma-disks \
plasma-firewall \
plasma-integration \
plasma-nm \
plasma-pa \
plasma-systemmonitor \
plasma-thunderbolt \
plasma-vault \
plasma-workspace-wallpapers \
print-manager \
sddm-kcm \
spectacle 

echo ""
echo "▄ ▄▖▄▖▄▖  ▄▖▄▖▄▖▖▖▄▖▄▖▄▖▄▖"
echo "▙▘▌▌▚ ▙▖  ▙▌▌▌▌ ▙▘▌▌▌ ▙▖▚ "
echo "▙▘▛▌▄▌▙▖  ▌ ▛▌▙▖▌▌▛▌▙▌▙▖▄▌"
echo ""

sudo pacman -S --needed \
7zip \
adobe-source-han-sans-otc-fonts \
adobe-source-han-serif-otc-fonts \
alsa-lib \
alsa-oss \
alsa-plugins \
alsa-ucm-conf \
alsa-utils \
audacity \
bat \
btop \
exfatprogs \
fastfetch \
fd \
filezilla \
flatpak \
fzf \
gdu \
gtk-engine-murrine \
gwenview \
handbrake \
hunspell \
hunspell-en_gb \
imagemagick \
inkscape \
inotify-tools \
jre-openjdk \
kdenlive \
krita \
lact \
less \
libreoffice-fresh \
linux-firmware-qlogic \
lsd \
mangohud \
micro \
networkmanager-openvpn \
ntfs-3g \
openssh \
pacman-contrib \
papirus-icon-theme \
pipewire-alsa \
plocate \
qbittorrent \
qjackctl \
qt5-quickcontrols2 \
realtime-privileges \
ripgrep \
rocm-smi-lib \
rsync \
starship \
steam \
syncthing \
tealdeer \
thefuck \
ttf-roboto \
ufw \
umu-launcher \
unrar \
unzip \
vim \
vlc \
wget \
winetricks \
wireplumber \
xdg-desktop-portal \
xdg-desktop-portal-gtk \
xdg-desktop-portal-kde \
xdotool \
xorg-xwininfo \
yabridge \
yabridgectl \
yad \
zsh

echo ""
echo "▄▖▖▖▄▖  ▄▖▄▖▄▖▖▖▄▖▄▖▄▖▄▖"
echo "▌▌▌▌▙▘  ▙▌▌▌▌ ▙▘▌▌▌ ▙▖▚ "
echo "▛▌▙▌▌▌  ▌ ▛▌▙▖▌▌▛▌▙▌▙▖▄▌"
echo ""

yay -S --needed \
aic94xx-firmware \
ast-firmware \
brave-bin \
downgrade \
jdownloader2 \
papirus-folders-catppuccin-git \
upd72020x-fw \
visual-studio-code-bin \
wd719x-firmware

echo ""
echo "▄▖▖ ▄▖▄▖▄▖▄▖▖▖  ▄▖▄▖▄▖▖▖▄▖▄▖▄▖▄▖"
echo "▙▖▌ ▌▌▐ ▙▌▌▌▙▘  ▙▌▌▌▌ ▙▘▌▌▌ ▙▖▚ "
echo "▌ ▙▖▛▌▐ ▌ ▛▌▌▌  ▌ ▛▌▙▖▌▌▛▌▙▌▙▖▄▌"
echo ""

echo ""
echo "ADDING FLATHUB REPO!"
echo ""

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo ""
echo "DONE"
echo ""

# FLATPAK PACKAGES
flatpak install -y flathub \
com.github.tchx84.Flatseal \
com.vysp3r.ProtonPlus \
com.github.Matoking.protontricks \
com.stremio.Stremio \
org.freedesktop.Platform.VulkanLayer.MangoHud \
com.discordapp.Discord \
net.lutris.Lutris \
com.obsproject.Studio \
com.core447.StreamController 

echo ""
echo "▄▖▖ ▖▄▖▄ ▖ ▄▖  ▄▖▄ ▄ ▖  ▖"
echo "▙▖▛▖▌▌▌▙▘▌ ▙▖  ▚ ▌▌▌▌▛▖▞▌"
echo "▙▖▌▝▌▛▌▙▘▙▖▙▖  ▄▌▙▘▙▘▌▝ ▌"
echo ""

sudo systemctl enable sddm.service

echo ""
echo "▄▖▄▖▄▖  ▄▖▖▖▄▖▖ ▖ "
echo "▚ ▙▖▐   ▚ ▙▌▙▖▌ ▌ "
echo "▄▌▙▖▐   ▄▌▌▌▙▖▙▖▙▖"
echo ""

echo ""
echo "  _____  _______________   __   __   _____  _______  __  _______  __"
echo "  /  _/ |/ / __/_  __/ _ | / /  / /  /  _/ |/ / ___/  \ \/ / _ \ \/ /"
echo " _/ //    /\ \  / / / __ |/ /__/ /___/ //    / (_ /    \  / __ |\  / "
echo "/___/_/|_/___/ /_/ /_/ |_/____/____/___/_/|_/\___/     /_/_/ |_|/_/  "
echo "                                                                     "

echo ""
echo "┳┳┓┏┓┏┳┓┏┓┓ ┓ ┳┳┓┏┓  ┓┏┏┓┓┏"
echo "┃┃┃┗┓ ┃ ┣┫┃ ┃ ┃┃┃┃┓  ┗┫┣┫┗┫"
echo "┻┛┗┗┛ ┻ ┛┗┗┛┗┛┻┛┗┗┛  ┗┛┛┗┗┛"
echo ""


chsh -s /usr/bin/zsh

echo ""
echo ""
echo "███████╗██╗███╗   ██╗██╗███████╗██╗  ██╗███████╗██████╗ "
echo "██╔════╝██║████╗  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗"
echo "█████╗  ██║██╔██╗ ██║██║███████╗███████║█████╗  ██║  ██║"
echo "██╔══╝  ██║██║╚██╗██║██║╚════██║██╔══██║██╔══╝  ██║  ██║"
echo "██║     ██║██║ ╚████║██║███████║██║  ██║███████╗██████╔╝"
echo "╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ "
echo ""
echo ""


seconds=30

while [ $seconds -gt 0 ]; do
    printf "\rRebooting in %d seconds... \n(Press Enter to reboot now, or any other key to cancel)" $seconds
    
    # CHECK FOR KEY PRESS
    if read -t 1 -n 1 key; then
        if [[ $key == "" ]]; then
            # IF ENTER IS PRESSED
            echo -e "\nRebooting immediately..."
            sudo reboot
        else
            # IF ANY OTHER KEY IS PRESSED
            echo -e "\nReboot cancelled!"
            exit 0
        fi
    fi
    
    ((seconds--))
done

echo -e "\nRebooting now..."