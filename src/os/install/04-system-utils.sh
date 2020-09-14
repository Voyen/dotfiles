#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   System Utils\n\n"

install_package "Brotli" "brotli"
install_package "Zopfli" "zopfli"
install_package "xclip" "xclip"
install_package "GParted" "gparted"
install_package "SpeedTest CLI" "speedtest-cli"
install_package "Gnome Tweak Tool" "gnome-tweak-tool"
