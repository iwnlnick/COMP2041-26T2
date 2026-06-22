#!/bin/dash

# iterate over a list of words
## note that with "", there is different behavior, hmm why might this be?
for fruit in apple banana cherry; do
    echo $fruit
done

## practical use of for loop
for argument in "$@"; do
    echo $argument
done

# iterate over all files using glob
for f in *; do
    echo $f
done

# iterate over files using a glob, but only ones that end with .html
# glob represents the cwd
## index.html
## hi.html
for f in *.html; do
    echo $f
done

# glob on the left side — match files by prefix
# would capture stuff like essay1, essay2, essayabc, etc
for f in essay*; do
    echo $f
done

# more specific prefix + extension
# report1.txt report2.txt report400.txt
for f in report*.txt; do
    echo $f
done

# iterate over a numeric range using seq
## example of command substitution -> evaluates command, then uses it as input
for i in $(seq 1 5); do
    echo $i
done

list=$(seq 1 5)

$() = command substitution
$((i + 1))