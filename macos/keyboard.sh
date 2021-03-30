# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 15

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 2

# Vim extensionsが原因？連続入力ができなかった
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCodeInsiders ApplePressAndHoldEnabled -bool false
