#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Developer Tools\n\n"

install_package "AWS CLI" "awscli"
install_package "OpenJDK" "openjdk-14-jdk"
install_package "Maven" "maven"
install_package "ShellCheck" "shellcheck"
install_package "Meld" "meld"

./04.1-nvm.sh

if [ -d "$HOME/.nvm" ]; then

    if ! package_is_installed "yarn"; then

        add_key "https://dl.yarnpkg.com/debian/pubkey.gpg" \
            || print_error "Yarn (add key)"

        add_to_source_list "https://dl.yarnpkg.com/debian/ stable main" "yarn.list" \
            || print_error "Yarn (add to package resource list)"

        update &> /dev/null \
            || print_error "Yarn (resync package index files)"

        install_package "Yarn" "yarn" "--no-install-recommends"

    fi

fi

./04.2-npm.sh

if ! package_is_installed "kubectl"; then

    install_package "gnupg2" "gnupg2"
    add_key "https://packages.cloud.google.com/apt/doc/apt-key.gpg" \
        || print_error "kubectl (add key)"

    add_to_source_list "https://apt.kubernetes.io/ kubernetes-xenial main" "kubernetes.list" \
        || print_error "kubectl (add to package resource list)"

    update &> /dev/null \
        || print_error "kubectl (resync package index files)"

    install_package "kubectl" "kubectl"

fi
