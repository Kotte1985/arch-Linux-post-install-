#!/usr/bin/env bash
#-------------------------------------------------------------------------
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'linux-lts-headers'     # Long term support kernel headers
    'intel-ucode'           # Microcode update files for Intel CPUs

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bc'                    # Precision calculator language
    'bleachbit'             # File deletion utility
    'curl'                  # Remote content retrieval
    'git'                   # Remote content retrieval
    'file-roller'           # Archive utility
    'gnome-keyring'         # System password storage
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'jq'                    # JSON parsing library
    'jshon'                 # JSON parsing library
    'neofetch'              # Shows system info when you launch terminal
    'ntp'                   # Network Time Protocol to set time via network.
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'rsync'                 # Remote file sync utility
    'speedtest-cli'         # Internet speed via terminal
    'terminus-font'         # Font package with some bigger fonts for login terminal
    'tlp'                   # Advanced laptop power management
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH
    'discover'              # file manager
    'packagekit-qt5'        # file manager packagekit
    'ark'                   # zip file manager
    'onboard'               # on screen keyboard
    'gnome-disk-utility'    # Disk partision Software
    'telegram-desktop'      # Official Telegram Desktop client
    'cmake'                 # A cross-platform open-source make system
    'extra-cmake-modules'   # Extra modules and scripts for CMake
    'kdecoration'           # Plugin based library to create window decorations
    'qt5-declarative'       # Classes for QML and JavaScript languages
    'qt5-x11extras'         # Provides platform-specific APIs for X11

    # DISK UTILITIES ------------------------------------------------------

    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gnome-disk-utility'    # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility

    # GENERAL UTILITIES ---------------------------------------------------

    'catfish'               # Filesystem search
    'nemo'                  # Filesystem browser
    'veracrypt'             # Disc encryption utility
    'variety'               # Wallpaper changer
    'xfburn'                # CD burning application

    # DEVELOPMENT ---------------------------------------------------------

    'apache'                # Apache web server
    'clang'                 # C Lang compiler
    'cmake'                 # Cross-platform open-source make system
    'electron'              # Cross-platform development using Javascript
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'mariadb'               # Drop-in replacement for MySQL
    'meld'                  # File/directory comparison
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'php'                   # Web application scripting language
    'php-apache'            # Apache PHP driver
    'postfix'               # SMTP mail server
    'python'                # Scripting language
    'qtcreator'             # C++ cross platform IDE
    'qt5-examples'          # Project demos for Qt
    'yarn'                  # Dependency management (Hyper needs this)

    # WEB TOOLS -----------------------------------------------------------

    'firefox'               # Web browser
    'opera'                 # Web browser
    'kdeconnect'            # Adds communication between KDE and your smartphone


    # COMMUNICATIONS ------------------------------------------------------




    # MEDIA ------------------------------------------------------------


    'vlc'                   # Video player
    'celluloid'             # Video player
    'easyeffects'           # Audio Effects for Pipewire applications


    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'inkscape'              # Vector image creation app
    'imagemagick'           # Command line image manipulation tool
    'nomacs'                # Image viewer
    'geeqie'                # Image viewer
    'pngcrush'              # Tools for optimizing PNG images
    'ristretto'             # Multi image viewer
    'ksnip'                 # snapshot



    # PRODUCTIVITY --------------------------------------------------------

    'galculator'            # Gnome calculator
    'hunspell'              # Spell checker and morphological analyzer library and program
    'hunspell-en_us'        # US English hunspell dictionaries
    'okular'                # PDF viewer
    'rust'                  # The Rust toolchain installer

    # FONTS AND PLUGINS --------------------------------------------------------

    'adobe-source-sans-pro-fonts'
    'aspell-en'
    'enchant'
    'gst-libav'
    'gst-plugins-good'
    'icedtea-web'
    'jre8-openjdk'
    'languagetool'
    'libmythes'
    'mythes-en'
    'pkgstats'
    'ttf-anonymous-pro'
    'ttf-bitstream-vera'
    'ttf-dejavu'
    'ttf-droid'
    'ttf-liberation'
    'ttf-ubuntu-font-family'
    'lsof'
    'ecryptfs-utils'
    'faac'




)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
