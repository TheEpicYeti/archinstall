#!/bin/bash

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
echo "${YELLOW}██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗ ${RC}"
echo "${YELLOW}██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝ ${RC}"
echo "${YELLOW}██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗${RC}"
echo "${YELLOW}██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║${RC}"
echo "${YELLOW}██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝${RC}"
echo "${YELLOW}╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ${RC}"
echo ""
echo ""


BACKUP_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")/dotfiles"

echo ""
echo "${GREEN}#####################################${RC}"
echo "${GREEN}#####      .CONFIG CONFIGS      #####${RC}"
echo "${GREEN}#####################################${RC}"
echo ""

echo "Copying .config Configs..."
rsync -ah --info=progress2 $BACKUP_DIR/.config ${HOME}


echo ""
echo "${GREEN}#####################################${RC}"
echo "${GREEN}#####      .LOCAL CONFIGS      #####${RC}"
echo "${GREEN}#####################################${RC}"
echo ""

echo "Copying .local Configs..."
rsync -ah --info=progress2 $BACKUP_DIR/.local ${HOME}


echo ""
echo "${GREEN}##################################${RC}"
echo "${GREEN}#####      HOME CONFIGS      #####${RC}"
echo "${GREEN}##################################${RC}"
echo ""

echo "Copying ZSH Configs..."
rsync -ah --info=progress2 $BACKUP_DIR/.zshrc ${HOME}
rsync -ah --info=progress2 $BACKUP_DIR/.zshenv ${HOME}
rsync -ah --info=progress2 $BACKUP_DIR/.zsh_aliases ${HOME}


echo ""
echo "${GREEN}#################################${RC}"
echo "${GREEN}#####      ZSH CONFIGS      #####${RC}"
echo "${GREEN}#################################${RC}"
echo ""

echo "Cloning ZSH PLUGINS..."
git clone https://github.com/Aloxaf/fzf-tab.git ${HOME}/.zsh-plugins/fzf-tab
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${HOME}/.zsh-plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.zsh-plugins/zsh-syntax-highlighting


echo ""
echo "${GREEN}##################################${RC}"
echo "${GREEN}#####      ROOT CONFIGS      #####${RC}"
echo "${GREEN}##################################${RC}"
echo ""

echo "Copying PACMAN Config..."
sudo rsync -h --info=progress2 $BACKUP_DIR/pacman.conf /etc/

echo "Copying SYSCTL Config..."
sudo rsync -h --info=progress2 $BACKUP_DIR/99-sysctl.conf /etc/sysctl.d/

echo "Copying SYSCTL Config..."
sudo rsync -hr --info=progress2 $BACKUP_DIR/sddm/catppuccin-mocha-mauve /usr/share/sddm/themes/


echo ""
echo "${GREEN}#################################################${RC}"
echo "${GREEN}#####      FLATPAK PERMS & GTK CONFIGS      #####${RC}"
echo "${GREEN}#################################################${RC}"
echo ""

echo "Copying GTK Themes..."
rsync -ahr ${HOME}/.local/share/themes/Colloid-Purple-Dark-Catppuccin/gtk-3.0/gtk.css ${HOME}/.config/gtk-3.0/
rsync -ahr ${HOME}/.local/share/themes/Colloid-Purple-Dark-Catppuccin/gtk-4.0/gtk.css ${HOME}/.config/gtk-4.0/

echo "Applying Catppucin Folder Theme..."
papirus-folders -C cat-mocha-mauve --theme Papirus-Dark

echo "Applying FLATPAK Overrides..."
flatpak --user override --filesystem=xdg-data/themes:ro
flatpak --user override --filesystem=xdg-data/icons:ro
flatpak --user override --filesystem=xdg-data/fonts:ro
flatpak --user override --filesystem=xdg-config/gtk-4.0:ro
flatpak --user override --filesystem=xdg-config/gtk-3.0:ro
flatpak --user override --env=ICON_THEME=Papirus-Dark
flatpak --user override --env=GTK_THEME=Colloid-Purple-Dark-Catppuccin


echo ""
echo "${GREEN}#####################################${RC}"
echo "${GREEN}#####      ENABLE SERVICES      #####${RC}"
echo "${GREEN}#####################################${RC}"
echo ""

echo "Enabling CRON Service..."
sudo systemctl enable --now cronie.service

echo "Enabling PACCACHE Service..."
sudo systemctl enable --now paccache.timer

echo "Enabling LACT Service..."
sudo systemctl enable --now lactd.service

echo "Enabling FSTRIM Service..."
sudo systemctl enable --now fstrim.timer

echo "Enabling SYNCTHING Service..."
sudo systemctl enable --now syncthing@cain.service


echo ""
echo ""
echo "${YELLOW}███████╗██╗███╗   ██╗██╗███████╗██╗  ██╗███████╗██████╗ ${RC}"
echo "${YELLOW}██╔════╝██║████╗  ██║██║██╔════╝██║  ██║██╔════╝██╔══██╗${RC}"
echo "${YELLOW}█████╗  ██║██╔██╗ ██║██║███████╗███████║█████╗  ██║  ██║${RC}"
echo "${YELLOW}██╔══╝  ██║██║╚██╗██║██║╚════██║██╔══██║██╔══╝  ██║  ██║${RC}"
echo "${YELLOW}██║     ██║██║ ╚████║██║███████║██║  ██║███████╗██████╔╝${RC}"
echo "${YELLOW}╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚═════╝ ${RC}"
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