#!/bin/bash

if [[ ! -z "${DOTFILES_PATH}" ]]; then
  # Dotfiles flag found, append instructions to user bashrc.
    echo "BASHRC_APPEND env var not found!"
fi

set -e
exec "$@"
