#!/bin/dash

# In dash, it's not trivial to validate whether a variable is an integer
# so we have to do some weird tricks using the comparison operators I showed earlier

read mark

if [ "$mark" -eq "$mark" ] 2>/dev/null; then
    echo "$mark is an integer"
else
    echo "$mark is NOT an integer"
fi

# Clearly, this is not a intuitive solution AT ALL. Hence why I'm showing this so you guys
# don't get stuck on something like this for 30 minutes, but also learn why the solution works.

# This works because:
# - Anything equal to itself is always true numerically
    # - So if it's actually a number, it will always pass.
# - Since -eq is an integer comparison operator. 
    # - If it encounters anything but a integer, the 'test' command will fail and return non-zero

# We also redirect error to /dev/null with 2>/dev/null, so user doesn't see it.
## It always will send an error to output without it, which we can show.