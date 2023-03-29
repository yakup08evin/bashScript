#!/bin/bash
# Listing the planets.
# for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
# do
#   echo $planet  # Each planet on a separate line.
# done

# i=0
# PLANETS="Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"

# #echo; echo
# #for planet in "Mercury" "Venus" "Earth" "Mars" "Jupiter" "Saturn" "Uranus" "Neptune" "Pluto"
# for planet in $PLANETS
#     # All planets on same line.
#     # Entire 'list' enclosed in quotes creates a single variable.
#     # Why? Whitespace incorporated into the variable.
# do
#   printf "$((i++)): "
#   echo $planet
# done

#############################################################################################################

# for planet in "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"
# do
#   set -- $planet  #  Parses variable "planet"
#                   #+ and sets positional parameters.
#   #  The "--" prevents nasty surprises if $planet is null or
#   #+ begins with a dash.
#   #  May need to save original positional parameters,
#   #+ since they get overwritten.
#   #  One way of doing this is to use an array,
#   #         original_params=("$@")
#   #echo "$1              $2,000,000 miles from the sun"
#   printf "%-15s : %s,000,000 miles from the sun\n" "$1" "$2"
#   #-------two  tabs---concatenate zeroes onto parameter $2
# done
# # (Thanks, S.C., for additional clarification.)
# exit 0

##############################################################################################################


#  Invoke this script both with and without arguments,
#+ and see what happens.
for a in $@
do
 echo  "$a "
done
#  The 'in list' missing, therefore the loop operates on '$@'
#+ (command-line argument list, including whitespace).
echo
exit 0