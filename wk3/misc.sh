#!/bin/dash

# Every process has three standard streams:
# stdin  (0) - where it reads input from
# stdout (1) - where it writes normal output
# stderr (2) - where it writes error messages

# Normal echo goes to stdout (1)
echo "this is a normal message"

# Redirect to stderr (2) with >&2
## Remember that > means to output the output to a stream / file.
echo "this is an error message" >&2

# Why bother? Because they can be separated:
./script.sh > output.txt        — stdout goes to file, stderr still shows in terminal
./script.sh 2> errors.txt       — stderr goes to file, stdout still shows in terminal
./script.sh > out.txt 2> err.txt — both redirected separately

# Practical example — exit with an error message to stderr:
if [ $# -eq 0 ]; then
    echo "Usage: $0 LAST" >&2
    exit 1
fi

# The typical convention is that error messages and usage hints go to stderr
# Everything else goes to stdout

# Additionally, if you ever don't care about an output and want it simply to not be seen.
# use /dev/null as the file to send it to.
# /dev/null is a special file that deletes everything written to it. Think of it as a black hole.

# Suppress stderr
# This is a very common pattern, where we send ONLY the error of the output to /dev/null
# so that only the stdout is shown.
./script.sh 2> /dev/null