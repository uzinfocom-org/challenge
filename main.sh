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

# Save current path in variable
current_path=$(pwd)

# Copy generate.sh to each location and execute it
for i in "${locations[@]}"
do
  cp generate.sh "$i"
  cd "$i" || exit
  ./generate.sh
  cd "$current_path" || exit
done
