# set location to ~/Pictures
defaults write com.apple.screencapture location -string "~/Pictures"

# set format (to png)
defaults write com.apple.screencapture type -string "png"

killall SystemUIServer
