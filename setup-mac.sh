#!/bin/sh

# ================================= #
# Script to apply my MacOS settings #
# ================================= #

# Ctrl+Cmd to move window
defaults write -g NSWindowShouldDragOnGesture -bool true

# Show full path in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Enable key repeat (disable press-and-hold for special characters)
defaults write -g ApplePressAndHoldEnabled -bool false

# Set fast keyboard repeat rate
defaults write -g KeyRepeat -int 5
defaults write -g InitialKeyRepeat -int 25

# Apply Finder and Dock changes
killall Finder
killall Dock

PRIVATE_SETUP="$HOME/.config/setup-mac-private.sh"
if [ -f "$PRIVATE_SETUP" ]; then
    sh "$PRIVATE_SETUP"
fi

echo "MacOS setup complete 😎"
