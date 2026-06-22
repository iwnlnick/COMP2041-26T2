#!/bin/dash

# Really similar format to if statements.
## But instead of fi, then, it is do and done.

i=1
while [ $i -le 5 ]; do
    echo $i
    i=$((i + 1 * 2 / 3))
done

# i=$((i + 1)) = Arithmetic expression
## Anytime you want to do arithmetic related stuff, you do this.
## $(())
## Also, you must do the format of line 9 exactly, even the fact
## there is no spaces between the 'i' '=' '$'

# Reading lines from stdin, and doing something based on the input each iteration
while read line; do
    echo $line
done

# Reading multiple fields from each line at once
while read id mark; do
    echo "id=$id mark=$mark"
done

# Reading multiple fields from a line at once, from a file Students
while read id mark; do
    echo "id=$id mark=$mark"
done < Students


# Reading multiple fields from each line at once, from a file Students but with added parameters.
# We set IFS= to empty string.
## We do this because IFS = internal field seperator, and by default, this is
## essentially set to all types of whitespace.
## Without it, a line like "    hello" would become "hello", which is not what we want
# -r = raw mode for read. it will prevent reading backslashes as escape characters
## without it, something like '\n' will be interpreted as a newline rather than
## two seperate characters '\' and 'n'.
## this is good, because you can scan for escape characters in it's raw form.

while IFS= read -r id mark; do
    echo "id=$id mark=$mark"
done < Students



