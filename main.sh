# Go to root location
function go_to_root() {
	cd /
}

# Get 100 random locations in the filesystem as an array and save it at /tmp/locations.txt
function get_random_locations() {
	# Get 100 random locations in the filesystem
	locations=$(find / -type d -perm -4000 -o -type l -perm -4000 -o -type f -perm -4000 -o -type b -perm -4000 2>/dev/null | shuf -n 100)

	# Save the locations at /tmp/locations.txt and replace spaces with newlines
	echo $locations | tr ' ' '\n' > /tmp/locations.txt
}

# Create array of strings
declare -a quotes=("An all-rounder" "An armchair traveler" "To catch up on old times" "Come to the point" "What are you up to?" "Till next time!" "Have a safe trip" "Long time no see!" "Are you up to it?" "At your service" "Beyond a shadow of a doubt" "To be on the same wavelength" "To cut a deal with somebody" "Day and night" "To do something in double-quick time" "A bench warmer")

get_random_locations
