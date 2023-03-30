#!/bin/bash
# nested-loop.sh: Nested "for" loops.
outer=1             # Set outer loop counter.
inner=1
# Beginning of outer loop.
for (( a=1; a<=5; a++))
do
  echo "Pass $outer in outer loop."
  echo "---------------------"
            # Reset inner loop counter.
  # ===============================================
  # Beginning of inner loop.
  for (( b=1; b<=5; b++ ))
  do
    echo "Pass $inner in inner loop."
    ((inner++))
    #let "inner+=1"  # Increment inner loop counter.
  done
  # End of inner loop.
  # ===============================================
  #let "outer+=1"    # Increment outer loop counter. 
  ((outer++))
  echo              # Space between output blocks in pass of outer loop.
done               
# End of outer loop.
exit 0