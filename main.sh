# Go to root location
function go_to_root() {
	cd /
}

# Get 100 random directories in the filesystem and save it at /tmp/locations.txt
# if permission denied, skip it and continue till 100 directories valid are found
function get_random_locations() {
  find / -type d -print0 2>/dev/null | shuf -n 100 -z | xargs -0 > /tmp/locations.txt
}

# Create array of strings
declare -a quotes=("An all-rounder" "An armchair traveler" "To catch up on old times" "Come to the point" "What are you up to?" "Till next time!" "Have a safe trip" "Long time no see!" "Are you up to it?" "At your service" "Beyond a shadow of a doubt" "To be on the same wavelength" "To cut a deal with somebody" "Day and night" "To do something in double-quick time" "A bench warmer")

get_random_locations
