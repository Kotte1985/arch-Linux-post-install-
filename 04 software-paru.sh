#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

echo "CLOING: PARU"
git clone "https://aur.archlinux.org/paru.git"

PKGS=(

    # SYSTEM UTILITIES ----------------------------------------------------

    'anydesk'                      # remote desktop
    'flashplugin'                  # Flash
    'hunspell-en-med-glut-git'     # Hunspell dictionary of English medical terms

    # PRODUCTIVITY ------------------------------------------------------------------

    'wps-office'                   # An office productivity suite

    # FONTS AND PLUGINS --------------------------------------------------------------
    'ttf-times-new-roman'          # Times New Roman font from Microsoft
    'times-newer-roman'            # A font that kinda looks like Times New Roman, except each character is 5-10% wider.
    'ttf-wps-fonts'                # Symbol fonts required by wps-office.
    'ttf-gentium-basic'            # Fonts based on the original Gentium design with additional weights
    'ttf-mac-fonts'                # Mac fonts including Lucida Grande, Apple Garamond and other fonts from Apple

    # WEB TOOLS -----------------------------------------------------------

    'freedownloadmanager'          # FDM is a powerful modern download accelerator and organizer.

    # SYSTEM UTILITIES ----------------------------------------------------

     'stacer-bin'                  # Linux System Optimizer and Monitoring
     'ventoy-bin'                  # A new multiboot USB solution
     'kwin-scripts-forceblur'      # Force-enable blur effect to user-specified windows
     'vimix-cursors'               # An X Cursor theme inspired by Material design and based on capitaine-cursors

     # UTILITIES -----------------------------------------------------------
     'whatsdesk-bin'               # unofficial client of whatsapp
     'jamesdsp'                    # An audio effect processor for PipeWire clients
     'noisetorch'                  # Real-time microphone noise suppression on Linux
     #'etcher-bin'                  # Flash OS images to SD cards & USB drives, safely and easily


)

cd ${HOME}/paru
makepkg -si

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    paru -S "$PKG" --noconfirm --needed
done


echo
echo "Done!"
echo
