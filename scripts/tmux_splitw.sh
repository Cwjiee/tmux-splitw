#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

create_window() {
  case $1 in
    1) 
      tmux new-window
      ;;
    2) 
      tmux new-window

      tmux split-window -v -c "#{pane_current_path}"
      ;;
    3) 
      tmux new-window

      tmux split-window -v -c "#{pane_current_path}"
      tmux split-window -h -c "#{pane_current_path}"
      ;;
    4) 
      tmux new-window

      tmux split-window -v -c "#{pane_current_path}"
      tmux split-window -h -c "#{pane_current_path}"

      tmux select-pane -U
      tmux split-window -h -c "#{pane_current_path}"
      ;;
    *) echo "invalid argument" ;;
  esac
}

show_menu() {
  $(tmux display-menu -T "#[align=centre fg=green]Tmux-Split" -b "rounded" -x R -y P \
    "" \
    "-Choose number of panes" "" "" \
    "" \
    "1 panes" 1 "run 'source \"$CURRENT_DIR/tmux_splitw.sh\" && create_window 1 ' " \
    "2 panes" 2 "run 'source \"$CURRENT_DIR/tmux_splitw.sh\" && create_window 2 ' " \
    "3 panes" 3 "run 'source \"$CURRENT_DIR/tmux_splitw.sh\" && create_window 3 ' " \
    "4 panes" 4 "run 'source \"$CURRENT_DIR/tmux_splitw.sh\" && create_window 4 ' " \
    "" \
    "Close window" x "kill-window" \
    "" \
    "Close menu" q "" \
  )
}
