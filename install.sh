#!/bin/bash



#
# 	Install ioquake3 on macOs (catalina compatible)
# 	
# 	Developer: Diego Ulloa [ @diegoullao ]
# 	
# 	Email: diegoulloao@icloud.com
# 	Website: http://www.diegoulloa.cl/
# 	
# 	@version: 2
# 



set -e # exit on error
echo # break line from the command


# VARIABLES
declare -r BRANCH="dev"



# URL's: extras - dependencies

# Repository
declare -r ioquake3="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/dependencies/ioquake3-1.36-x64.zip"
declare -r pak="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/dependencies/baseq3/pak@.pk3"
declare -r xpr="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/extras/extra-pack-resolution.pk3"
declare -r q3_ls="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/extras/quake3-live-sounds.pk3"

# External
declare -r hi_res="http://ioquake3.org/files/xcsv_hires.zip"
declare -r mappack="https://cdn.playmorepromode.com/files/cpma-mappack-full.zip"
declare -r cpma="https://cdn.playmorepromode.com/files/cpma/cpma-1.52-nomaps.zip"



# Installation begins
cd /Applications



# ioquake3
echo "\n
**********************************************
	Downloading ioquake3 1.36 ...
**********************************************
\n"

curl -L $ioquake3 > ioquake3.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++
	Installing ioquake3 1.36 ...
++++++++++++++++++++++++++++++++++++++++++++++
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



# Makes Quake3 and baseq3 dir
cd "$HOME/Library/Application Support/"

if [ ! -d Quake3 ]; then
	mkdir Quake3
fi

cd Quake3

if [ ! -d baseq3 ]; then
	mkdir baseq3
fi

cd baseq3



# pak[0-8].pk3
echo "\n
**********************************************
	Getting pak.pk3 ...
**********************************************
\n"

COUNT=0

while [ $COUNT -lt 9 ]; do
	curl ${pak/@/$COUNT} > pak$COUNT.pk3
	let COUNT+=1
done

echo "\n\n-> pak.pk3 installed. 	(2 of 7)"



# High Resolution Pack
echo "\n
**********************************************
	Downloading High Resolution Pack ...
**********************************************
\n"

curl $hi_res > xcsv_hires.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++
	Installing High Resolution Pack ...
++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a xcsv_hires.zip
rm -f xcsv_hires.zip

echo "\n\n-> high resolution pack installed. 	(3 of 7)"



# Extra pack resolution
echo "\n
**********************************************
	Downloading Extra Pack Resolutions ...
**********************************************
\n"

curl -L $xpr > pak9hqq37test20181106.pk3

echo "\n\n-> extra pack resolutions installed. 	(4 of 7)"



# CPMA map pack
echo "\n
**********************************************
	Downloading CPMA Map-Pack ...
**********************************************
\n"

curl -L $mappack > cpma-mappack-full.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++
	Installing CPMA Map-Pack ...
++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -d . cpma-mappack-full.zip
rm -f cpma-mappack-full.zip

echo "\n\n-> cpma map-pack installed. 	(5 of 7)"



# Q3 live sounds pack
echo "\n
**********************************************
	Downloading Quake3 Live Soundpack ...
**********************************************
\n"

curl -L $q3_ls > quake3-live-soundpack.pk3

echo "\n\n-> quake3 live soundpack installed. 	(6 of 7)"



# CPMA MOD
echo "\n
**********************************************
	Downloading CPMA Mod 1.52 ...
**********************************************
\n"

cd ..
curl $cpma > cpma.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++
	Installing CPMA Mod 1.52 ...
++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a cpma.zip
rm -f cpma.zip

echo "\n\n-> cpma mod 1.52 installed. 	(7 of 7)"



# Done.
echo "\n
-------------------------------------------
	QUAKE 3 ARENA: INSTALLATION SUCCESSFUL.
-------------------------------------------
	Now to kick asses! ->
-------------------------------------------

follow on github: @diegoulloao :)
\n"
