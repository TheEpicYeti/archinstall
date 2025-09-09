#!/bin/bash

###################################
#####     RUN IN TERMINAL     #####
###################################

if [ "$TERM" != "xterm-256color" ] && [ "$TERM" != "xterm-kitty" ];
then
    kitty -e "$0"
else

####################################
#####     COLOUR VARIABLES     #####
####################################

BLACK=$(tput bold)$(tput setaf 0)
RED=$(tput bold)$(tput setaf 1)
GREEN=$(tput bold)$(tput setaf 2)
YELLOW=$(tput bold)$(tput setaf 3)
BLUE=$(tput bold)$(tput setaf 4)
MAGENTA=$(tput bold)$(tput setaf 5)
CYAN=$(tput bold)$(tput setaf 6)
WHITE=$(tput bold)$(tput setaf 7)
RC=$(tput sgr0)


echo ""
echo ""
echo "${YELLOWON}██████╗  █████╗  ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗     ██╗   ██╗██████╗ ${RC}"
echo "${YELLOWON}██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝     ██║   ██║██╔══██╗${RC}"
echo "${YELLOWON}██████╔╝███████║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗    ██║   ██║██████╔╝${RC}"
echo "${YELLOWON}██╔══██╗██╔══██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║    ██║   ██║██╔═══╝ ${RC}"
echo "${YELLOWON}██████╔╝██║  ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝    ╚██████╔╝██║     ${RC}"
echo "${YELLOWON}╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝ ╚═╝     ${RC}"
echo ""
echo ""


CONFIG="${HOME}/./.config"
LOCAL="${HOME}/./.local/share"

BACKUP_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")/dotfiles"
mkdir -p "$BACKUP_DIR"


echo ""
echo "${GREEN}############################################${RC}"
echo "${GREEN}#####      ZSH & TERMINAL CONFIGS      #####${RC}"
echo "${GREEN}############################################${RC}"
echo ""

echo "Copying ZSH Configs..."
rsync -ah --info=progress2 ${HOME}/.zshrc $BACKUP_DIR
rsync -ah --info=progress2 ${HOME}/.zshenv $BACKUP_DIR
rsync -ah --info=progress2 ${HOME}/.zsh_aliases $BACKUP_DIR

echo "Copying KITTY Configs..."
rsync -ahR --info=progress2 $CONFIG/kitty $BACKUP_DIR

echo "Copying STARSHIP Config..."
rsync -ahR --info=progress2 $CONFIG/starship.toml $BACKUP_DIR

echo "Copying FASTFETCH Config..."
rsync -ahR --info=progress2 $CONFIG/fastfetch $BACKUP_DIR

echo "Copying LSD Configs..."
rsync -ahR --info=progress2 $CONFIG/lsd $BACKUP_DIR

echo "Copying BAT Configs..."
rsync -ahR --info=progress2 $CONFIG/bat $BACKUP_DIR

echo "Copying YAZI Configs..."
rsync -ahR --info=progress2 $CONFIG/yazi $BACKUP_DIR


echo ""
echo "${GREEN}#################################${RC}"
echo "${GREEN}#####      KDE CONFIGS      #####${RC}"
echo "${GREEN}#################################${RC}"
echo ""

echo "Copying KDE Configs..."
rsync -ahR --info=progress2 $CONFIG/kglobalshortcutsrc $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/kwinrulesrc $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/kwinrc $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/kdeglobals $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/plasmashellrc $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/dolphinrc $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/krunnerrc $BACKUP_DIR


echo ""
echo "${GREEN}######################################${RC}"
echo "${GREEN}#####      KDENLIVE CONFIGS      #####${RC}"
echo "${GREEN}######################################${RC}"
echo ""

echo "Copying KDENLIVE Configs..."
rsync -ahR --info=progress2 $CONFIG/kdenlive-layoutsrc $BACKUP_DIR
rsync -ahR --info=progress2 $CONFIG/kdenliverc $BACKUP_DIR


echo ""
echo "${GREEN}###################################${RC}"
echo "${GREEN}#####      THEME CONFIGS      #####${RC}"
echo "${GREEN}###################################${RC}"
echo ""

echo "Copying GTK Themes..."
rsync -ahR --info=progress2 $LOCAL/themes/Colloid-Purple-Dark-Catppuccin $BACKUP_DIR
rsync -ahR --info=progress2 $LOCAL/themes/Colloid-Purple-Dark-Catppuccin-hdpi $BACKUP_DIR
rsync -ahR --info=progress2 $LOCAL/themes/Colloid-Purple-Dark-Catppuccin-xhdpi $BACKUP_DIR

echo "Copying PLASMA Colour Schemes..."
rsync -ahR --info=progress2 $LOCAL/color-schemes $BACKUP_DIR
rsync -ahR --info=progress2 $LOCAL/color-schemes $BACKUP_DIR

echo "Copying AURORAE Themes..."
rsync -ahR --info=progress2 $LOCAL/aurorae $BACKUP_DIR


echo ""
echo "${GREEN}##################################${RC}"
echo "${GREEN}#####      MISC CONFIGS      #####${RC}"
echo "${GREEN}##################################${RC}"
echo ""

echo "Copying MANGOHUD Config..."
rsync -ahR --info=progress2 $CONFIG/MangoHud $BACKUP_DIR

echo "Copying ENV Configs..."
rsync -ahR --info=progress2 $CONFIG/environment.d $BACKUP_DIR

echo "Copying SYSTEM MONITOR Configs..."
rsync -ahR --info=progress2 $CONFIG/systemmonitorrc $BACKUP_DIR
rsync -ahR --info=progress2 $LOCAL/plasma-systemmonitor $BACKUP_DIR

echo "Copying MICRO Configs..."
rsync -ahR --info=progress2 $CONFIG/micro $BACKUP_DIR

echo "Copying BTOP Configs..."
rsync -ahR --info=progress2 $CONFIG/btop $BACKUP_DIR


echo ""
echo "${GREEN}###################################${RC}"
echo "${GREEN}#####      FONTS & ICONS      #####${RC}"
echo "${GREEN}###################################${RC}"
echo ""

echo "Copying FONTS..."
rsync -ahR --info=progress2 $LOCAL/fonts $BACKUP_DIR
echo "Copying ICONS..."
rsync -ahR --info=progress2 $LOCAL/icons $BACKUP_DIR


echo ""
echo "${GREEN}###################################${RC}"
echo "${GREEN}#####      AUDIO CONFIGS      #####${RC}"
echo "${GREEN}###################################${RC}"
echo ""

echo "Copying PIPEWIRE Configs..."
rsync -ahR --info=progress2 $CONFIG/pipewire $BACKUP_DIR

echo "Copying WIREPLUMBER Configs..."
rsync -ahR --info=progress2 $CONFIG/wireplumber $BACKUP_DIR


echo ""
echo ""
echo "${YELLOWON} ▗▄▄▖▗▖  ▗▖▗▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖    ▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖ ▗▄▄▖${RC}"
echo "${YELLOWON}▐▌    ▝▚▞▘▐▌     █  ▐▌   ▐▛▚▞▜▌    ▐▌     █  ▐▌   ▐▌   ▐▌   ${RC}"
echo "${YELLOWON} ▝▀▚▖  ▐▌  ▝▀▚▖  █  ▐▛▀▀▘▐▌  ▐▌    ▐▛▀▀▘  █  ▐▌   ▐▛▀▀▘ ▝▀▚▖${RC}"
echo "${YELLOWON}▗▄▄▞▘  ▐▌ ▗▄▄▞▘  █  ▐▙▄▄▖▐▌  ▐▌    ▐▌   ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖▗▄▄▞▘${RC}"
echo ""
echo ""


echo ""
echo "${GREEN}##################################${RC}"
echo "${GREEN}#####      ARCH CONFIGS      #####${RC}"
echo "${GREEN}##################################${RC}"
echo ""

echo "Copying PACMAN Config..."
sudo rsync -ah --info=progress2 /etc/pacman.conf $BACKUP_DIR


echo ""
echo "${GREEN}####################################${RC}"
echo "${GREEN}#####      SYSTEM CONFIGS      #####${RC}"
echo "${GREEN}####################################${RC}"
echo ""

echo "Copying SYSCTL Config..."
sudo rsync -ah --info=progress2 /etc/sysctl.d/99-sysctl.conf $BACKUP_DIR



echo ""
echo ""
echo "${YELLOWON}███████╗██╗███╗   ██╗██╗███████╗██╗  ██╗███████╗██████╗ ${RC}"
echo "${YELLOWON}██╔════╝██║████╗  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗${RC}"
echo "${YELLOWON}█████╗  ██║██╔██╗ ██║██║███████╗███████║█████╗  ██║  ██║${RC}"
echo "${YELLOWON}██╔══╝  ██║██║╚██╗██║██║╚════██║██╔══██║██╔══╝  ██║  ██║${RC}"
echo "${YELLOWON}██║     ██║██║ ╚████║██║███████║██║  ██║███████╗██████╔╝${RC}"
echo "${YELLOWON}╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ ${RC}"
echo ""
echo ""

read -p "Press Enter to exit..."
exit 1

fi