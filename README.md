# Tmux Splitw

A plugin that allows you to create a new window with multiple panes with ease.

<br/>

## Installation
### With Tmux Plugin Manager (tpm)

Add the plugin in `.tmux.conf`:
```
set -g @plugin 'xamut/tmux-spotify'
```
Press `prefix + I` to fetch the plugin and source it. Done.

<br/>

## Usage
Press tmux `prefix + v` (for example, `C-b v`) and you will see a menu:

```
* 1 pane         (1) - creates a new window
* 2 panes        (2) - creates a new window with 2 panes
* 3 panes        (3) - creates a new window with 3 panes
* 4 panes        (4) - creates a new window with 4 panes
* Close window   (x) - kills the current window
* Close menu     (q) - close menu
```

