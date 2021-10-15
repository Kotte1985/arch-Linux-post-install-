#!/usr/bin/env bash
#-------------------------------------------------------------------------
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "FINAL SETUP AND CONFIGURATION"

makingdir () {
    mkdir ~/Downloads/.01temp
}

confTerminal1 () {
    echo
    echo "=========="
    echo "KONSOLE"
    echo "=========="

    ## MyZsh
    echo "Oh My ZSH"
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sh -c "$(git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting)"
    sh -c "$(git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions)"
    sh -c "$(git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions)"
    sh -c "$(git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z)"
    sh -c "$(git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf)"
}


confTerminal2 () {
    echo
    echo "=========="
    echo "KONSOLE"
    echo "=========="

    ## MyZsh
    echo "Oh My ZSH"
    sh -c "$(wget -O ~/Downloads/.01temp/.zshrc https://www.dropbox.com/s/4gustwt4s9814on/.zshrc?dl=0)"
    cp -r ~/Downloads/.01temp/.zshrc ~/.zshrc

    # ZSH
    echo "ZSH"
    chsh -s $(which zsh)
}





makingdir
confTerminal1
confTerminal2


echo "Done!"
echo
echo "Reboot now..."
echo


