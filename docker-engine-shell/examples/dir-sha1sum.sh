#!/bin/sh

echo "================================================================================================================="
echo "find all files in the directory"
echo "================================================================================================================="

# With -print0, find will separate the filenames with a null character (a zero byte).
# xargs must then be called with -0 (or --null,
# I recommend using long options in scripts, which increase readability, and reserve shortenings for disposable commands in an interactive console).

#find . -type f -print0
find . -type f

echo "================================================================================================================="
echo "Calc hash sum for each files"
echo "================================================================================================================="

find . -type f -print0 | sort -z | xargs -0 sha1sum

echo "================================================================================================================="
echo "Linux: compute a single hash for a given folder & contents?"
echo "================================================================================================================="

# When sha1sum is fed a file it prints the filename after the sum.
# When sha1sum is not fed a file or is used with a pipe. It puts the - there as a placeholder to indicate that the input was not a file.

# Since sha1sum hashes are 40 characters long, you could pipe the output into a head command and pull the first 40 characters from it:

echo "$(find . -type f -print0 | sort -z | xargs -0 sha1sum | sha1sum | head -c 40)"

echo "================================================================================================================="
