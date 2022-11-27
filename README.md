# RUBY MAC INSTALLER
A simple script to quickly install ruby on mac

### Description
Since ruby default version that comes with mac doesn't allow update or changing version, this could be a hassle for developers. So i made this script so i can just execute everything without having to worry about it too much.

this simple script will install 4 things on your Mac

- [Brew](https://brew.sh/) (if not already installed)
- [ruby-install](https://github.com/postmodern/ruby-install)
- [chruby](https://github.com/postmodern/chruby)
- Ruby (stable version)

### Install
```bash
/bin/bash -c "curl -fsSL https://raw.githubusercontent.com/ahmad-reza619/ruby_mac_installer/HEAD/install.sh"
```

### Uninstall
```bash
brew uninstall ruby-install chruby
rm -rf ~/.rubies/<your installed ruby version>
```

### Notes
if you want to use chruby, you have to add this line on your system zshrc or bash_profile
```bash
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh # Or run `brew info chruby` to find out installed directory
```
more info: https://github.com/postmodern/chruby#configuration
