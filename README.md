# dotfiles

My dotfiles target macOS systems.

### Setup

1. Install Xcode

```
# this will install clang, git, make, python3, swift, svn
$ xcode-select --install
```

2. Setup SSH, Git (Japanese)

- https://qiita.com/ucan-lab/items/21d62f1beaa8007c4ca9
- https://qiita.com/ucan-lab/items/aadbedcacbc2ac86a2b3
- https://qiita.com/ucan-lab/items/e02f2d3a35f266631f24

3. Clone this repo

```
$ git clone https://github.com/yasuo0mg/dotfiles.git ~/dotfiles
```

4. Install homebrew

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

5. Install packages via brew

Installed packages are in `/usr/local/celler` and linked to `/usr/local/bin`.

```
$ brew bundle --no-lock
```

6. Create symbolic link

```
$ ./link.sh
```

7. setup macos system preferences

```
$ ./.macos
```

### yarn

```
$ ln -s ~/.nvm/versions/node/v12.21.0 /usr/local/opt/node/
$ brew install yarn --ignore-dependencies
```

### Alfred4

Go to preferences > Features.
then check Folders and Images.

### iterm2

To enable to copy clipboard in tmux sesison, move to Preferences > “General” tab, and in the “Selection” section, and check “Applications in terminal may access clipboard”.