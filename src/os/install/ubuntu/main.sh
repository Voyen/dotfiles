#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

update
upgrade

./build-essentials.sh
./basics.sh
./../nvm.sh
./compression_tools.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./dev_tools.sh
./../npm.sh

./cleanup.sh
