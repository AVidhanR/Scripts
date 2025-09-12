# This configuration file sets up aesthetic and functional options for TMUX.
# Place this file in your home directory as ~/.tmux.conf
# Set the default terminal to a 256-color compatible one for better color support.
set -g default-terminal "screen-256color"

# Ensure window numbering starts from 1, not 0.
set -g base-index 1
set-window-option -g pane-base-index 1

# Configure the status bar colors and appearance.
set -g status-bg '#666666'
set -g status-fg '#ffffff'
set -g status-left '#[fg=#ffffff,bg=#444444] #[default] '
set -g status-right '#[fg=#ffffff,bg=#444444] #H #[default]'

# Customize the window list appearance.
set-window-option -g window-status-current-style bg=black,fg=white
set-window-option -g window-status-current-format '#[fg=#ffffff]#[bg=#005f5f] #I:#W #[default]'
set-window-option -g window-status-format '#[fg=#ffffff,bg=#444444] #I:#W #[default]'

# Use mouse to switch panes.
set -g mouse on

# Note on font: TMUX itself doesn't control the font. 
# You must configure your terminal emulator (e.g., Kitty, Alacritty, iTerm2, etc.) to use "Google Sans Code" as its default font. 
# This file only controls the colors and session numbering.
