#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Basics\n\n"

install_package "Tilix" "tilix"
install_package "cURL" "curl"
install_package "Git" "git"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if ! package_is_installed "google-chrome-stable"; then

    add_key "https://dl-ssl.google.com/linux/linux_signing_key.pub" \
        || print_error "Chrome Stable (add key)"

    add_to_source_list "[arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" "google-chrome.list" \
        || print_error "Chrome Stable (add to package resource list)"

    update &> /dev/null \
        || print_error "Chrome Stable (resync package index files)"

fi

install_package "Google Chrome" "google-chrome-stable"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

if ! package_is_installed "code"; then

    add_gpg "https://packages.microsoft.com/keys/microsoft.asc" "microsoft" \
        || print_error "VS Code (add key)"

    add_to_source_list "[arch=amd64] https://packages.microsoft.com/repos/vscode stable main" "vscode.list" \
        || print_error "VS Code (add to package resource list)"

    update &> /dev/null \
        || print_error "VS Code (resync package index files)"

fi

install_package "APT Transport HTTPS" "apt-transport-https"
install_package "VS Code" "code"
