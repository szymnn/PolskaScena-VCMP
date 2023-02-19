#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
clear='\033[0m'


rm -rf $HOME/Framework/Autoload/autoload.nut

allDirectory=($(ls $HOME/scripts/*/*.nut))
allScripts=($(ls $HOME/scripts/*.nut))
allModulesDir=($(ls $HOME/Modules/*/*.nut))
allModules=($(ls $HOME/Modules/*.nut))
echo "/**
  * @Generate Autoload Modules Files
  */" >>$HOME/Framework/Autoload/autoload.nut
for i in "${allModulesDir[@]}"; do
  echo '::dofile("'$i'");' >>$HOME/Framework/Autoload/autoload.nut
done
for i in "${allModules[@]}"; do
  echo '::dofile("'$i'");' >>$HOME/Framework/Autoload/autoload.nut
done
echo "/**
  * @Generate Autoload Scripts Files
  */" >>$HOME/Framework/Autoload/autoload.nut
for i in "${allDirectory[@]}"; do
  echo '::dofile("'$i'");' >>$HOME/Framework/Autoload/autoload.nut
done
for i in "${allScripts[@]}"; do
  echo '::dofile("'$i'");' >>$HOME/Framework/Autoload/autoload.nut
done


echo -e "$magenta[M&F FRAMEWORK]$yellow All script has loaded successfully$clear"
