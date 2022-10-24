#!/usr/bin/sudo bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "FINAL SETUP AND CONFIGURATION"

makingdir () {
    mkdir ~/.02temp
}

confTerminal () {
    echo
    echo "=========="
    echo "KONSOLE"
    echo "=========="

    ## Zsh
    echo "ZSH"
    sh -c "$(wget -O ~/.02temp/.zshrc https://www.dropbox.com/s/auy9bkgogqyw6e5/.zshrc?dl=0)"
    sudo cp -r ~/.02temp/.zshrc ~/.zshrc

    ## Powerlevel10
    echo "Powerlevel10"
    sudo cp -r /home/kotte/powerlevel10k ~/
    sh -c "$(wget -O ~/.02temp/.p10k.zsh https://www.dropbox.com/s/noypxg6rsw6wryf/.p10k.zsh?dl=0)"
    sudo cp -r ~/.02temp/.p10k.zsh ~/.p10k.zsh

    ## wallpapers
    echo "wallpapers"
    sudo cp -r /home/kotte/.config/Others/wall /usr/share/wallpapers/Next/contents

    # ZSH
    echo "ZSH"
    chsh -s $(which zsh)
}




makingdir
confTerminal



echo "Done!"
echo
echo "Reboot now..."
echo


