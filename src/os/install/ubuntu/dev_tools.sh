#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Developer Tools\n\n"

install_package "AWS CLI" "awscli"
install_package "OpenJDK" "openjdk-14-jdk"
install_package "Maven" "maven"
