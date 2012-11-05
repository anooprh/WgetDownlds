#!/bin/bash
echo Installing Home Brew...
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
echo Installing wget ..
brew install wget
sudo apt-get install wget
NO_OF_ITEMS=1426
DIR=$(cd "$(dirname "$0")"; pwd)
echo $NO_OF_ITEMS must by downloaded..Saving to $DIR
for ((i = 1 ; i <= $NO_OF_ITEMS ; i++))
do
	echo Item $i is being fetched..
	wget --recursive --level=1 --span-hosts --tries=1 --no-directories --timestamping --no-parent --execute="robots=off" --verbose --continue --directory-prefix=$DIR http://link.songspk.info/revival_old-is-gold/download/revival.php?id=$i
done
