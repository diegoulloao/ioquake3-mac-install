#!/bin/sh

# ioquake3 mac update
# author. Diego Ulloa
# website: https://diegoulloa.dev/

set -e # exit on error

# Variables
declare -r BRANCH="master"

# Local dependencies
declare -r ioquake3="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/dependencies/ioquake3.zip"

# Versions files
declare -r latest_version_url="https://github.com/diegoulloao/ioquake3-mac-install/raw/$BRANCH/version"
declare -r current_version_file_path="/Library/Application\ Support/Quake3/version"

# Escape if no version files is present
if [ -f "$current_version_file_path" ]; then
  echo "Could not found the version file on your system."
  exit 0
fi

# Get current ioquake3 version on the system
current_version=$(cat $current_version_file_path)

# Fetch latest version from server
latest_version=$(curl $latest_version_url | sed '/^[[:space:]]*$/d')

# Escape if is already updated to lastest
if [ "$current_version" == "$latest_version" ]; then
  echo "There is no update available."
  exit 0
fi

# Start installation
cd /Applications

# Download ioquake3
echo "\n
**************************************************
  Downloading latest ioquake3 ...
**************************************************
\n"

curl -L $ioquake3 > ioquake3.zip

echo "\n
++++++++++++++++++++++++++++++++++++++++++++++++++
  Updating current ioquake3 ...
++++++++++++++++++++++++++++++++++++++++++++++++++
\n"

unzip -a -o ioquake3.zip
rm -f ioquake3.zip

if [ -d __MACOSX  ]; then
  cd __MACOSX

  if [ -d ioquake3 ]; then
    rm -rf ioquake3
  fi

  cd ..

  if [ ! `ls -A __MACOSX` ]; then
    rm -rf __MACOSX
  fi
fi

# Update local version
echo $current_version > $current_version_file_path

echo "\n\n-> ioquake3 updated successfully."
