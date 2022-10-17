# Go to root location
function go_to_root() {
	cd /
}

# Get 100 random locations in the filesystem as an array
function random_dir() {
	# Get 100 random locations in the filesystem as an array
	random_dir=$(find / -type d -print0 | shuf -n100 -z | xargs -0)
	# Convert the array to a string
	random_dir=$(echo "$random_dir" | tr ' ' '\n')
	# Convert the string to an array
	# shellcheck disable=SC2206
	random_dir=($random_dir)
}

# Create array of strings
declare -a quotes=("An all-rounder" "An armchair traveler" "To catch up on old times" "Come to the point" "What are you up to?" "Till next time!" "Have a safe trip" "Long time no see!" "Are you up to it?" "At your service" "Beyond a shadow of a doubt" "To be on the same wavelength" "To cut a deal with somebody" "Day and night" "To do something in double-quick time" "A bench warmer")

# Loop through the array of locations and save random quote to each location as a file named "quote.txt" and in the end save all locations in a file named "locations.txt" at /tmp
function main() {
	for i in "${quotes[@]}"; do
		# Get random quote from quote array
		random_quote=$(shuf -n1 -e "${quotes[@]}")
		# Save random quote to a file named "quote.txt" at the current location
		echo "$random_quote" >"$i/quote.txt"
		# Save current location to a file named "locations.txt" at /tmp
		echo "$i" >>/tmp/locations.txt
	done
}
