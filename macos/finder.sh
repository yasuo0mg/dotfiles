# show all file extensions inside the Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# the size of Finder sidebar icons
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# dont create .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores True

# reveal .files
defaults write com.apple.finder AppleShowAllFiles TRUE

killall Finder
