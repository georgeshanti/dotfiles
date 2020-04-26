Install Plasma and SDDM
'''
pacman -S xorg xorg-server
echo "exec startkde" > ~/.xinitrc
pacman -S plasma-desktop
pacman -S sddm
'''

Install applications and themes
pacman -S konsole dolphin firefox kate file-roller
pacman -S breeze-gtk kde-gtk-config
pacman -S networkmanager plasma-nm

Install sudo
'''
pacman -S sudo
'''

Setup sudo config
'''
visudo
'''
Uncomment the wheel group, this allows all users in the wheel group to run all commands.
    %wheel ALL=(ALL) ALL

'''
useradd -m -G wheel -s /bin/bash georgeannoys
passwd georgeannoys
'''

Login into root and launch GUI
'''
systemctl start sddm.service
'''