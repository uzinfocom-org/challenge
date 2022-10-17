# Spawn terminal and run timer. When timer is done, kill terminal.

# Set timer to 3 minutes
timer=180

# Spawn new terminal session
gnome-terminal --tab --title="Timer"

# Run timer
sleep $timer

# Kill terminal
killall gnome-terminal
