#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

install_package "qBittorrent" "qbittorrent"
install_package "VLC" "vlc"
install_package "FiraCode" "fonts-firacode"
install_package "Figlet" "figlet"
install_package "lolcat" "lolcat"
