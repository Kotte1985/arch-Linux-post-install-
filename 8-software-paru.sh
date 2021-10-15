#!/usr/bin/env bash
#-------------------------------------------------------------------------
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

    'geeqie'                       # image viewer
    'deja-dup'                     # backup
    'cylon'                        # maintanance
    'anydesk'                      # remote desktop
    'flashplugin'                  # Flash
    'autofs'                       # Auto-mounter
    'inxi'                         # System information utility
    'hunspell-en-med-glut-git'     # Hunspell dictionary of English medical terms

    # PRODUCTIVITY ------------------------------------------------------------------

    'wps-office'                   # An office productivity suite

    # FONTS AND PLUGINS --------------------------------------------------------------

    'ttf-wps-fonts'                # Symbol fonts required by wps-office.
    'ttf-gentium-basic'            # Fonts based on the original Gentium design with additional weights
    'ttf-mac-fonts'                # Mac fonts including Lucida Grande, Apple Garamond and other fonts from Apple
    'ttf-ms-win10-auto'            # Microsoft Windows 10 TrueType fonts
    'ttf-ms-win10-auto-other'      # Microsoft Windows 10 Other TrueType fonts

    # WEB TOOLS -----------------------------------------------------------

    'freedownloadmanager'          # FDM is a powerful modern download accelerator and organizer.

    # SYSTEM UTILITIES ----------------------------------------------------

     'stacer-bin'                  # Linux System Optimizer and Monitoring

    # TERMINAL UTILITIES --------------------------------------------------


    # UTILITIES -----------------------------------------------------------

    'etcher-bin'                   # Flash OS images to SD cards & USB drives, safely and easily
    'enpass-bin'                   # Password manager

    # DEVELOPMENT ---------------------------------------------------------

    'visual-studio-code-bin'       # Kickass text editor

    # MEDIA ---------------------------------------------------------------

    'gstreamer0.10'                # GStreamer Multimedia Framework

     # MEDIA ---------------------------------------------------------------

    'tuxpaint'                     # Drawing program designed for young children
    'tuxpaint-config'              # Tux Paint configuration tool
    'tuxpaint-stamps'              # Additional stamps for Tux Paint

    # THEMES --------------------------------------------------------------

    'lightly-qt'                   # A modern style for qt applications

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
