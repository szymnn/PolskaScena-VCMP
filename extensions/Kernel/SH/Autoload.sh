#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'

rm -rf /home/vcmp/extensions/Autoload/autoload.nut

allDirectory=($(ls /home/vcmp/scripts/*/*.nut))
allScripts=($(ls /home/vcmp/scripts/*.nut))
allModulesDir=($(ls /home/vcmp/modules/*/*.nut))
allModules=($(ls /home/vcmp/modules/*.nut))
echo "/**
  * @Generate Autoload Scripts Files
  */" >>/home/vcmp/extensions/Autoload/autoload.nut
for i in "${allDirectory[@]}"; do
  echo '::dofile("'$i'");' >>/home/vcmp/extensions/Autoload/autoload.nut
done
for i in "${allScripts[@]}"; do
  echo '::dofile("'$i'");' >>/home/vcmp/extensions/Autoload/autoload.nut
done
echo "/**
  * @Generate Autoload Modules Files
  */" >>/home/vcmp/extensions/Autoload/autoload.nut
for i in "${allModulesDir[@]}"; do
  echo '::dofile("'$i'");' >>/home/vcmp/extensions/Autoload/autoload.nut
done
for i in "${allModules[@]}"; do
  echo '::dofile("'$i'");' >>/home/vcmp/extensions/Autoload/autoload.nut
done

echo -e "$magenta[M&F FRAMEWORK]$yellow All script has loaded successfully$clear"
