#!/bin/bash

# Instala Quake 3 Arena en macOS

set -e # exit on error

cd /Applications

echo "\n
******************************************
Downloading ioquake3 1.36 ...
******************************************
\n"

# ioquake3
curl -L https://www.dropbox.com/s/nhkiocsqgrb9jmk/ioquake3-1.36.zip?dl=1 > ioquake3.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing ioquake3 1.36 ...
++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -o ioquake3.zip
rm -f ioquake3.zip

cd __MACOSX
rm -rf ioquake3

cd ..

if [ ! `ls -A __MACOSX` ]; then
	rm -rf __MACOSX
fi

echo "\n\n-> ioquake 1.36 installed. 	(1 of 7)"

cd "$HOME/Library/Application Support/"

if [ ! -d Quake3 ]; then
	mkdir Quake3
fi

cd Quake3

if [ ! -d baseq3 ]; then
	mkdir baseq3
fi

cd baseq3

echo "\n
******************************************
Getting pak.pk3 ...
******************************************
\n"

COUNT=0

while [ $COUNT -lt 9 ]; do
	curl https://raw.githubusercontent.com/nrempel/q3-server/master/baseq3/pak$COUNT.pk3 > pak$COUNT.pk3
	let COUNT+=1
done

echo "\n\n-> pak.pk3 installed. 	(2 of 7)"

echo "\n
******************************************
Downloading High Resolution Pack ...
******************************************
\n"

# High Resolution Pack
curl http://ioquake3.org/files/xcsv_hires.zip > xcsv_hires.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing High Resolution Pack ...
++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a xcsv_hires.zip
rm -f xcsv_hires.zip

echo "\n\n-> high resolution pack installed. 	(3 of 7)"

echo "\n
******************************************
Downloading Extra Pack Resolutions ...
******************************************
\n"

# Extra pack resolution
curl -L https://www.dropbox.com/s/8hj5hbwyuxylc1c/pak9hqq37test20181106.pk3?dl=1 > pak9hqq37test20181106.pk3

echo "\n\n-> extra pack resolutions installed. 	(4 of 7)"

echo "\n
******************************************
Downloading CPMA Map-Pack ...
******************************************
\n"

# CPMA map pack
curl -L https://cdn.playmorepromode.com/files/cpma-mappack-full.zip > cpma-mappack-full.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing CPMA Map-Pack ...
++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -d . cpma-mappack-full.zip
rm -f cpma-mappack-full.zip

echo "\n\n-> cpma map-pack installed. 	(5 of 7)"

echo "\n
******************************************
Downloading Quake3 Live Soundpack ...
******************************************
\n"

# Q3 live sounds pack
curl -L https://www.dropbox.com/s/1m4031dnvywtlco/Quake%203%20Live%20Sounds.pk3?dl=1 > quake3-live-soundpack.pk3

echo "\n\n-> quake3 live soundpack installed. 	(6 of 7)"

echo "\n
******************************************
Downloading CPMA Mod 1.51 ...
******************************************
\n"

# CPMA MOD
cd ..
curl https://cdn.playmorepromode.com/files/cpma/cpma-1.51-nomaps.zip > cpma.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++
Installing CPMA Mod 1.51 ...
++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a cpma.zip
rm -f cpma.zip

echo "\n\n-> cpma mod 1.51 installed. 	(7 of 7)"

echo "\n
---------------------------------------
QUAKE 3 ARENA: INSTALLATION SUCCESSFUL.
---------------------------------------
Now to kick asses! ->
---------------------------------------

follow on github: @diegoulloao :)
\n"
