#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  $(tmux bind-key v run-shell "source $CURRENT_DIR/scripts/tmux_split.sh && show_menu")
}

main
