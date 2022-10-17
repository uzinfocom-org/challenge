# Go to root location
function go_to_root() {
	cd /
}

# Get 100 random locations in the filesystem as an array and save it at /tmp/locations.txt
function get_random_locations() {
  # Get 100 random locations in the filesystem
  locations=$(find / -type d -print0 | shuf -n 100 -z | xargs -0)

  # Save the locations in a file
  echo "$locations" > /tmp/locations.txt
}

# Create array of strings
declare -a quotes=("An all-rounder" "An armchair traveler" "To catch up on old times" "Come to the point" "What are you up to?" "Till next time!" "Have a safe trip" "Long time no see!" "Are you up to it?" "At your service" "Beyond a shadow of a doubt" "To be on the same wavelength" "To cut a deal with somebody" "Day and night" "To do something in double-quick time" "A bench warmer")

# Loop through locations at /tmp/locations.txt and create a file with a random quote
function main() {
  # Loop through locations
  while read -r location; do
    # Get random quote
    quote=${quotes[$RANDOM % ${#quotes[@]} ]}

    # Create file with random quote
    echo "$quote" > "$location"/quote.txt
  done < /tmp/locations.txt
}
