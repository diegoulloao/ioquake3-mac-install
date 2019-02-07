#!/bin/bash

# Instala Quake 3 Arena en macOS

set -e # exit on error

cd /Applications

echo "\nDescargando ioquake3 1.36...\n"

# ioquake3
curl -L https://www.dropbox.com/s/nhkiocsqgrb9jmk/ioquake3-1.36.zip?dl=1 > ioquake3.zip
unzip -a -o ioquake3.zip
rm -f ioquake3.zip

cd __MACOSX
rm -rf ioquake3

cd ..

if [ ! `ls -A __MACOSX` ]; then
	rm -rf __MACOSX
fi

cd "$HOME/Library/Application Support/"

if [ ! -d Quake3 ]; then
	mkdir Quake3
fi

cd Quake3

if [ ! -d baseq3 ]; then
	mkdir baseq3
fi

cd baseq3

echo "\nObteniendo Paquetes pak.pk3...\n"

COUNT=0

while [ $COUNT -lt 9 ]; do
	curl https://raw.githubusercontent.com/nrempel/q3-server/master/baseq3/pak$COUNT.pk3 > pak$COUNT.pk3
	let COUNT+=1
done

echo "\nInstalando High Resolution Pack...\n"
# High Resolution Pack
curl http://ioquake3.org/files/xcsv_hires.zip > xcsv_hires.zip
unzip -a xcsv_hires.zip
rm -f xcsv_hires.zip

echo "\nInstalando Pack Extra Resoluciones...\n"
# Extra pack resolution
curl -L https://www.dropbox.com/s/8hj5hbwyuxylc1c/pak9hqq37test20181106.pk3?dl=1 > pak9hqq37test20181106.pk3

echo "\nInstalando CPMA Map-Pack...\n"
# CPMA map pack
curl -L https://cdn.playmorepromode.com/files/cpma-mappack-full.zip > cpma-mappack-full.zip
unzip -a -d . cpma-mappack-full.zip
rm -f cpma-mappack-full.zip

echo "\nInstalando Quake 3 Live Soundpack...\n"
# Q3 live sounds pack
curl -L https://www.dropbox.com/s/1m4031dnvywtlco/Quake%203%20Live%20Sounds.pk3?dl=1 > quake3-live-soundpack.pk3

echo "\nInstalando CPMA Mod 1.51...\n"

# CPMA MOD
cd ..
curl https://cdn.playmorepromode.com/files/cpma/cpma-1.51-nomaps.zip > cpma.zip
unzip -a cpma.zip
rm -f cpma.zip

echo "\nQuake 3 Arena: Instalación completada!\n"
