echo "Checking brew..."
# Check brew
which -s brew
if [[ $? != 0 ]] ; then
	# Install Homebrew
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "Brew Installed!"
else
	# Update Homebrew
	brew update
	echo "Brew Updated!"
fi

echo "Installing chruby & ruby-install..."
brew install chruby ruby-install

echo "installing stable ruby..."
ruby-install ruby > /dev/null 2>&1

echo "Switch ruby version to the one installed by ruby-install"
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh # Or run `brew info chruby` to find out installed directory
regex="[0-9]\.[0-9]\.[0-9]$"
INSTALLED_RUBY=$(chruby | head -n 1)
if [[ $INSTALLED_RUBY =~ $regex ]]; then
	version="${BASH_REMATCH[1]}"
	chruby $version
	echo "Script Finished successfully"
else
	echo "ERROR"
fi
