#!/bin/sh
git commit -am "$1" &&
git push &&
./interface/npm run build &&
rm -r ~/LuizOtav.io/ibd &&
mv ./interface/dist ~/LuizOtav.io/ibd &&
cd ~/LuizOtav.io &&
git commit -am "$1" &&
git push