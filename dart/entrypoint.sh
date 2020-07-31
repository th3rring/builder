#!/bin/bash

if [[ ! -z "${DOTFILES_PATH}" ]]; then
  # Dotfiles flag found, append instructions to user bashrc.
  
fi

set -e
exec "$@"
