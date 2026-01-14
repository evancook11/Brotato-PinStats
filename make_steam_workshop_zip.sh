#!/bin/sh


cd ../..

mkdir mod-temp

cp -r mods-unpacked mod-temp

rm -rf mod-temp/mods-unpacked/Revy-PinStats/.git
rm mod-temp/mods-unpacked/Revy-PinStats/make_steam_workshop_zip.sh

mkdir mod-temp/.import
cp -r .import/PinnedStats_* mod-temp/.import

zip -qr "PinnedStats.zip" mod-temp

rm -rf mod-temp


