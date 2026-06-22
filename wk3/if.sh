#!/bin/dash

# Format of the if statements need to be exactly like this, with the if ...; then ... fi structure.
# Even the spaces within the [] is crucial.

read num # reads input, and puts input into num.

# I made three different if statement branches to illustrate the three combinations it can possibly be.
# Normal if statement
# If statement connected to elif
# Combination of the two with an else

if [ $num -gt 10 ]; then
    echo "big"
fi

if test $num -gt 10; then
    echo "big"
fi

if [ $num -gt 10 ]; then
    echo "big"
elif [ $num -gt 5 ]; then
    echo "medium"
fi


if [ $num -gt 10 ]; then
    echo "big"
elif [ $num -gt 5 ]; then
    echo "medium"
else
    echo "small"
fi

# It's important to note that above, is the equivalent to the below.
# [ ] is essentially just syntax sugar and uses the test command itself.
# It's good to note this, because if you're stuck on if statement arguments such as -gt, -lt, etc,
# you can use 'man test'
if test $num -gt 10; then
    echo "big"
elif test $num -gt 5; then
    echo "medium"
else
    echo "small"
fi

# Using a command's exit code directly in if
# Commands return 0 (true) or non-zero (false)
# $? holds the exit code of the last command and can be used to debug commands.
# You need -q otherwise it will output the grep output (the line that matches, which most of the time
# you don't want)
if grep -q "hello" file.txt; then
    echo "found hello"
fi

# Can do the inverse with !
if ! grep -q "hello" file.txt; then
    echo "found hello"
fi

# The key insight is that if doesn't care about [ ] specifically 
# it just runs whatever command you give it and checks the exit code.
