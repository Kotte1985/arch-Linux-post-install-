#!/usr/bin/env bash
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
    mkdir ~/Downloads/.01config
}


confTerminal2 () {
    echo
    echo "=========="
    echo "KONSOLE"
    echo "=========="

    ## config for kde plasma
    echo "configs-backup.tgz"
    sh -c "$(wget -O ~/Downloads/.01config/configs-backup.tgz https://www.dropbox.com/s/oktygowaeigvhrm/configs-backup.tgz?dl=0)"
    cp -r ~/Downloads/.01config/configs-backup.tgz ~/configs-backup.tgz

    # Kde CONFIGURATION
    tar -xvf configs-backup.tgz
}


makingdir
confTerminal2


echo "Done!"
echo
echo "Reboot now..."
echo


