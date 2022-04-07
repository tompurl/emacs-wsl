#!/bin/bash

set -eoux pipefail

# 3. Configure and install Emacs

cd ~/emacs-28.1

# Almost everything below here was copied from here:
# https://gitlab.com/mslot/src_installs/-/blob/master/emacs_install_ubuntu.sh

export CC="gcc-10"

./autogen.sh

# ./configure --with-cairo --with-native-compilation
./configure --with-native-compilation -with-json --with-modules --with-harfbuzz --with-compress-install \
   --with-threads --with-included-regex --with-x-toolkit=lucid --with-zlib --with-jpeg --with-png --with-imagemagick --with-tiff --with-xpm --with-gnutls \
   --with-xft --with-xml2 --with-mailutils | tee ./config.out

make -j 8 | tee ./make.out
sudo make install

rm ~/emacs-28.1.tar.xz
