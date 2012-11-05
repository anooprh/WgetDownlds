#!/bin/bash
NO_OF_ITEMS=3
for i in {1..$NO_OF_ITEMS}
do
wget --recursive --level=1 --span-hosts --tries=1 --no-directories --timestamping --no-parent --execute="robots=off" --verbose --continue --directory-prefix=/home/anoop/Downloads/WgetDownlds http://link.songspk.info/revival_old-is-gold/download/revival.php?id=$i
done
