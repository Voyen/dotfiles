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
./03-nvm.sh
./04-system-utils.sh
./05-dev-tools.sh
./06-image-tools.sh
./07-misc.sh
./08-npm.sh

./99-cleanup.sh
npm