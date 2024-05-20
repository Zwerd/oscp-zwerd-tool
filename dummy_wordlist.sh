#!/bin/bash
# this script was written by zwerd
url=$1

# How to run the script:
[ $# -eq 0 ] && { echo "Usage: $0 <url>"; exit 1; }

wordlist=$(cewl $url|grep -v CeWL)
wordlist1=$(echo $wordlist| tr [:lower:] [:upper:])
wordlist2=$(echo $wordlist1| tr [:upper:] [:lower:])
finalwordlist=$(echo "$wordlist $wordlist1 $wordlist2"|tr " " "\n"|sort -u)
echo $finalwordlist|tr " " "\n"
