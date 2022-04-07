#!/usr/bin/env bash

# 2. Download Emacs

set -eoux pipefail

cd ~
wget --no-clobber https://ftpmirror.gnu.org/emacs/emacs-28.1.tar.xz
tar -xvf emacs-28.1.tar.xz
