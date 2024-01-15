#!/bin/bash

# 	ioquake3 mac install
# 	author: Diego Ulloa
# 	website: https://diegoulloa.dev/

set -e # exit on error

# Variables
declare -r BRANCH="master"

# Local Dependencies
declare -r ioquake3="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/dependencies/ioquake3.zip"
declare -r pak="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/dependencies/baseq3/pak@.pk3"
declare -r cd_key="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/dependencies/baseq3/q3key"
declare -r version="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/version"

declare -r xpr="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/extras/extra-pack-resolution.pk3"
declare -r q3_ls="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/extras/quake3-live-sounds.pk3"
declare -r hd_weapons="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/extras/hd-weapons.pk3"
declare -r zpack_weapons="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/extras/zpack-weapons.pk3"

# External dependencies
declare -r pak0="https://github.com/nrempel/q3-server/raw/master/baseq3/pak0.pk3"
declare -r hi_res="https://files.ioquake3.org/xcsv_hires.zip"
declare -r mappack="https://cdn.playmorepromode.com/files/cpma-mappack-full.zip"
declare -r cpma="https://cdn.playmorepromode.com/files/cpma/cpma-1.53-nomaps.zip"

# Start installation
cd /Applications

# Download ioquake3
echo "\n
**************************************************
  Downloading ioquake3 ...
**************************************************
\n"

curl -L $ioquake3 > ioquake3.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++++++
  Installing ioquake3 ...
++++++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -o ioquake3.zip
rm -f ioquake3.zip

if [ -d __MACOSX  ]; then
  cd __MACOSX

  if [ -d ioquake3 ]; then
    rm -rf ioquake3
    rm -rf ._ioquake3
  fi

  cd ..

  if [ ! `ls -A __MACOSX` ]; then
    rm -rf __MACOSX
  fi
fi

echo "\n\n-> ioquake3 installed. 	(1 of 10)"

# Create Quake3 and baseq3 directories
cd "$HOME/Library/Application Support/"

if [ ! -d Quake3 ]; then
	mkdir Quake3
fi

cd Quake3

if [ ! -d baseq3 ]; then
	mkdir baseq3
fi

cd baseq3

# Get pak files
echo "\n
**************************************************
	Getting pak.pk3 ...
**************************************************
\n"

# pak0.pk3
echo "\tDownloading pak0.pk3 ...
\n"

curl -L $pak0 > pak0.pk3

# pak[1-8].pk3
COUNT=1

while [ $COUNT -lt 9 ] ; do
	echo "\n
	Downloading and installing pak$COUNT.pk3 ...
	\n"

	curl -L ${pak/@/$COUNT} > pak$COUNT.pk3
	let COUNT+=1
done

echo "\n\n-> pak files installed. 	(2 of 10)"

# High Resolution Pack
echo "\n
**************************************************
	Downloading High Resolution Pack ...
**************************************************
\n"

curl -L $hi_res > xcsv_hires.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++++++
	Installing High Resolution Pack ...
++++++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -o xcsv_hires.zip
rm -f xcsv_hires.zip

echo "\n\n-> high resolution pack installed. 	(3 of 10)"

# Extra pack resolution
echo "\n
**************************************************
	Downloading Extra Pack Resolutions ...
**************************************************
\n"

curl -L $xpr > pak9hqq37test20181106.pk3

echo "\n\n-> extra pack resolutions installed. 	(4 of 10)"

# CPMA map pack
echo "\n
**************************************************
	Downloading CPMA Map-Pack ...
**************************************************
\n"

curl -L $mappack > cpma-mappack-full.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++++++
	Installing CPMA Map-Pack ...
++++++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -o -d . cpma-mappack-full.zip
rm -f cpma-mappack-full.zip

echo "\n\n-> cpma map-pack installed. 	(5 of 10)"

# Q3 live sounds pack
echo "\n
**************************************************
	Downloading Quake3 Live Soundpack ...
**************************************************
\n"

curl -L $q3_ls > quake3-live-soundpack.pk3

echo "\n\n-> quake3 live soundpack installed. 	(6 of 10)"

# CPMA MOD
echo "\n
**************************************************
	Downloading CPMA Mod 1.52 ...
**************************************************
\n"

cd ..
curl -L $cpma > cpma.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++++++
	Installing CPMA Mod 1.52 ...
++++++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -o cpma.zip
rm -f cpma.zip

echo "\n\n-> cpma mod 1.52 installed. 	(7 of 10)"

# cd-key
echo "\n
**************************************************
	Downloading and installing cd-key ...
**************************************************
\n"

cd baseq3

curl -L $cd_key > q3key

echo "\n\n-> cd-key installed. 	(8 of 10)"

# hd-weapons
echo "\n
**************************************************
	Downloading and installing hd-weapons ...
**************************************************
\n"

curl -L $hd_weapons > pakxy01Tv5.pk3

echo "\n\n-> hd-weapons installed. 	(9 of 10)"

# zpack-weapons replacement
echo "\n
**************************************************
	Downloading and installing zpack-weapons ...
**************************************************
\n"

curl -L $zpack_weapons > zpack-weapons.pk3

echo "\n\n-> zpack-weapons installed. 	(10 of 10)"

cd ..

echo "\n
**************************************************
	Tagging version ...
**************************************************
\n"

# set version
curl -L $version > version

# Resume installation
echo "\n
----------------------------------------------------
	QUAKE 3 ARENA: SUCCESSFUL INSTALLATION.
----------------------------------------------------
	Now to kick asses! ->
\n"

# End installation
