# Set menubar digital clock format
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm:ss"

killall SystemUIServer
