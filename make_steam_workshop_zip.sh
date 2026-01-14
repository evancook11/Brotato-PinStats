#!/bin/sh


cd ../..

mkdir mod-temp

cp -r mods-unpacked mod-temp

rm -rf mod-temp/mods-unpacked/Revy-PinStats/.git
rm mod-temp/mods-unpacked/Revy-PinStats/make_steam_workshop_zip.sh

mkdir mod-temp/.import
cp -r .import/PinnedStats_* mod-temp/.import

cd mod-temp
zip -qr "../PinnedStats.zip" .

cd ..

rm -rf mod-temp


