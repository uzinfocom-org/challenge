# Quotes
# Are you up to it?
# At your service
# Beyond a shadow of a doubt
# To be on the same wavelength
# To cut a deal with somebody
# Day and night
# To do something in double-quick time
# A bench warmer
# An all-rounder
# An armchair traveler
# To catch up on old times
# Come to the point
# What are you up to?
# Till next time!
# Have a safe trip
# Long time no see!

# Create array of quotes
quotes=("Are you up to it?" "At your service" "Beyond a shadow of a doubt" "To be on the same wavelength" "To cut a deal with somebody" "Day and night" "To do something in double-quick time" "A bench warmer" "An all-rounder" "An armchair traveler" "To catch up on old times" "Come to the point" "What are you up to?" "Till next time!" "Have a safe trip" "Long time no see!")


# Generate file for each quote and save it in current directory with name of 6 length random numbers using MD5 and .txt extension
for i in "${quotes[@]}"
do
  # Generate random number
  random=$(echo $RANDOM | md5sum | cut -c 1-6)

  # Create file with random name and .txt extension
  touch $random.txt

  # Write quote to file
  echo $i >> $random.txt
done

# Append current path in /tmp/locations.txt
echo "$PWD" >> /tmp/locations.txt
