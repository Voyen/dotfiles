#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • Preferences\n"

execute "dconf load / < gnome-settings.ini" \
    "Set basic gnome tweaks and preferences"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n • VSCode\n"

execute "code --install-extension shan.code-settings-sync" \
    "Install Settings Sync extension"

