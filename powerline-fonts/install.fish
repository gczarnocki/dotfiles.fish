#!/usr/bin/env fish

pushd ~
git clone https://github.com/powerline/fonts.git
pushd fonts
chmod +x ./install.sh
./install.sh
popd
rm -rf ~/fonts
popd
