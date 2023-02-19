#!/bin/bash
clear;

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

clear='\033[0m'


cd $HOME/Modules

echo -e "$magenta[M&F FRAMEWORK]$yellow Pass the module name: $clear"
read moduleName
dir = ${moduleName^}
mkdir dir
cd dir
mkdir Controller
mkdir Service
mkdir Interface
mkdir Model
mkdir Repository