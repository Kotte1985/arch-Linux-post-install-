#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    'onboard'               # on screen keyboard
    'telegram-desktop'      # Official Telegram Desktop client
     #'conky'                 # Lightweight system monitor for X
     #'conky-manager'         # GUI for managing Conky config files with options to browse and edit themes
    'gufw'                  # Uncomplicated way to manage your Linux firewall

    # DISK UTILITIES ------------------------------------------------------

    'exfat-utils'           # Mount exFat drives
    'gnome-disk-utility'    # Disk utility
    'kdeconnect'            # Adds communication between KDE and your smartphone

    # PRODUCTIVITY --------------------------------------------------------

    'firefox'               # Browser
    'nemo'                  # Filemanager
    'galculator'            # Gnome calculator
    'hunspell'              # Spell checker and morphological analyzer library and program
    'hunspell-en_us'        # US English hunspell dictionaries
    'vlc'                   # Player
    'lib32-pipewire'        # Low-latency audio/video router and processor - 32-bit client library

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
