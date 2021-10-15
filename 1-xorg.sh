#!/usr/bin/env bash
#-------------------------------------------------------------------------
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg'                       # 2D/3D video driver
        'xorg-drivers'               # 2D/3D video driver
        'xf86-video-intel'           # 2D/3D video driver
        'mesa'                       # Open source version of OpenGL
        'xf86-input-synaptics'       # Trackpad driver
        'lib32-mesa'                 # 2D/3D video driver
        'vulkan-mesa-layers'         # 2D/3D video driver
        'lib32-vulkan-mesa-layers'   # 2D/3D video driver
        'vulkan-icd-loader'          # 2D/3D video driver
        'ocl-icd'                    # 2D/3D video driver
        'lib32-ocl-icd'              # 2D/3D video driver
        'intel-compute-runtime'      # 2D/3D video driver
        'xf86-video-qxl'             # 2D/3D video driver
        'xf86-video-voodoo'          # 2D/3D video driver
        'xf86-video-vesa'            # 2D/3D video driver
        'xf86-video-sisusb'          # 2D/3D video driver
        'xf86-video-openchrome'      # 2D/3D video driver
        'xf86-video-fbdev'           # 2D/3D video driver
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
