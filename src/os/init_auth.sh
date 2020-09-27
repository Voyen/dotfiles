#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

  print_in_purple "\n • Initialise Authentication\n\n"

  if cmd_exists "git"; then

    if [ "$(git config --get remote.origin.url)" != "$DOTFILES_ORIGIN" ]; then
        ./initialize_git_repository.sh "$DOTFILES_ORIGIN"
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if ! $skipQuestions; then
        ./update_content.sh
    fi

  fi

  if cmd_exists "gcloud"; then

    gcloud init

  fi
  
}

main
