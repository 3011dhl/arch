pacman -Syy
reflector -c "VN" --protocol https --sort rate --save /etc/pacman.d/mirrorlist
pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
timedatectl set-timezone Asia/Ho_Chi_Minh
pacman -S sudo neovim grub networkmanager xorg xorg-xinit pulseaudio adobe-source-code-pro-fonts intel-ucode
nvim /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo dhl3011 > /etc/hostname
systemctl enable NetworkManager
passwd
useradd -m -G wheel dhl3011 && passwd dhl3011
nvim /etc/sudoers
