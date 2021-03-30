# Size (16~128)
defaults write com.apple.dock tilesize -int 32

# magnification
defaults write com.apple.dock magnification -bool true

# set size when magnifying
defaults write com.apple.dock largesize -int 64

# set dock's position
defaults write com.apple.dock orientation -string "bottom"

# set animations effect when closing a window
defaults write com.apple.dock mineffect -string "genie"

# double-click a window's title bar
defaults write -g AppleActionOnDoubleClick -string "Zoom"

# minimize windows into applicaiton icon
defaults write com.apple.dock minimize-to-application -bool false

# animate opening applications
defaults write com.apple.dock launchanim -bool true

# automatically hide and show the dock
defaults write com.apple.dock autohide -bool false

# show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# do not show recent applications in dock
defaults write com.apple.dock show-recents -bool false

# remove all default apps in dock except Finder and Trash
defaults write com.apple.dock persistent-apps -array

killall Dock
