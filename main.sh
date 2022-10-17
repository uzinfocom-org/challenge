# Locations
# /usr/etc/
# /usr/lib/
# /usr/local/
# /usr/share/
# /boot/grub/themes/
# /etc/cups/
# /etc/pacman.d/
# /root

# Create array of locations
locations=("/usr/etc/" "/usr/lib/" "/usr/local/" "/usr/share/" "/boot/grub/themes/" "/etc/cups/" "/etc/pacman.d/" "/root")

# Copy generate.sh to each location and execute it
for i in "${locations[@]}"
do
  cp generate.sh "$i"
  cd "$i" || exit
  ./generate.sh
done
