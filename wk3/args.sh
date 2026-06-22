#!/bin/dash


# This line above, the hashbang, you always need!
# Memorise it cause it won't be given to you in the exam

# When inside a script, these are available:
# $0   — name of the script itself
# $1, $2, $3, ...  — positional arguments
# $#   — number of arguments
# $@   — all arguments as separate words  (use in loops)
# $*   — all arguments as one string      (rarely preferred over $@)

# Example of how a script might use them:
echo "Script name : $0"
echo "Num args    : $#"
echo "All args    : $@"
echo "First arg   : $1"
echo "Second arg  : $2"
