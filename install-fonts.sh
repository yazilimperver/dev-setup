#!/bin/bash

RELEASE="17.0.2"
mkdir /tmp/iosevka-font/
mkdir /tmp/iosevka-font/v$RELEASE
cd /tmp/iosevka-font/v$RELEASE

#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-aile-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-curly-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-curly-slab-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-etoile-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-curly-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-curly-slab-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-slab-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss01-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss02-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss03-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss04-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss05-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss06-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss07-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss08-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss09-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss10-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss11-$RELEASE.zip
#wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss12-$RELEASE.zip
wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss13-$RELEASE.zip
wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss14-$RELEASE.zip
wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss15-$RELEASE.zip
wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss16-$RELEASE.zip
wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss17-$RELEASE.zip
wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-fixed-ss18-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss01-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss02-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss03-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss04-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss05-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss06-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss07-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss08-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss09-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss10-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss11-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss12-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss13-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss14-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss15-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss16-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss17-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-ss18-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-curly-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-curly-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss01-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss02-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss03-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss04-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss05-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss06-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss07-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss08-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss09-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss10-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss11-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss12-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss13-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss14-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss15-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss16-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss17-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-term-ss18-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-aile-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-curly-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-curly-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-etoile-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-curly-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-curly-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss01-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss02-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss03-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss04-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss05-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss06-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss07-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss08-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss09-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss10-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss11-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss12-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss13-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss14-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss15-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss16-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss17-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-fixed-ss18-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss01-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss02-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss03-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss04-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss05-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss06-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss07-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss08-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss09-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss10-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss11-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss12-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss13-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss14-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss15-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss16-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss17-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-ss18-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-curly-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-curly-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-slab-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss01-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss02-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss03-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss04-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss05-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss06-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss07-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss08-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss09-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss10-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss11-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss12-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss13-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss14-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss15-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss16-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss17-$RELEASE.zip
# wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-unhinted-iosevka-term-ss18-$RELEASE.zip

unzip \*.zip

sudo mkdir /usr/local/share/fonts/iosevka-font
sudo mv *.ttf /usr/local/share/fonts/iosevka-font/.

sudo fc-cache -fv
