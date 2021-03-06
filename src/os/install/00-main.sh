#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Installs\n\n"

update
upgrade

./01-build-essentials.sh
./02-basics.sh
./03-system-utils.sh
./04-dev-tools.sh
./05-image-tools.sh
./06-misc.sh

./99-cleanup.sh
