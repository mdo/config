#!/usr/bin/env bash
#
# Usage:
# 1. Install and agree to terms for Xcode, then download and run Strap.
# 2. curl https://raw.githubusercontent.com/mdo/config/master/config.sh > ~/Downloads/config.sh && bash ~/Downloads/config.sh

red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
end=$'\e[0m'

#
# Prep
#

bin_dir="/usr/local/bin"
work_dir="$HOME/work/"
github_dir="$HOME/github/"
ruby_version="2.3.7"

printf "%s\n======================================================================\n%s" $yellow $end
printf "%s# Loading mdo/config\n%s" $yellow $end
printf "%s======================================================================\n%s" $yellow $end

#
# Copying dotfiles
#

printf "%s\n# Copying dotfiles...\n%s" $yellow $end

dotfiles=( bash_profile gitconfig )
for file in "${dotfiles[@]}"
do
  printf "%s  - .$file%s"
  if [[ ! -e "$HOMwE/.$file" ]]; then
    {
      curl https://raw.githubusercontent.com/mdo/config/master/.$file > $HOME/.$file
    } &> /dev/null
    printf "%s - Success!\n%s" $green $end
  else
    printf "%s - Already present\n%s" $cyan $end
  fi
done

#
# Creating directories
#

printf "%s\n# Creating directories...\n%s" $yellow $end

printf "%s  - Creating $work_dir...%s"
if [[ ! -e "$work_dir" ]]; then
  mkdir $work_dir
  printf "%s - Success!\n%s" $green $end
else
  printf "%s - Already created\n%s" $cyan $end
fi

printf "%s  - Creating $github_dir...%s"
if [[ ! -e "$github_dir" ]]; then
  mkdir $github_dir
  printf "%s - Success!\n%s" $green $end
else
  printf "%s - Already created\n%s" $cyan $end
fi

#
# Cloning repos
#

printf "%s\n# Cloning repositories...\n%s" $yellow $end

cd $github_dir
github_repos=( github enterprise-web design blog brand icons githubuniverse.com resources keynote )
for repo in "${github_repos[@]}"
do
  printf "%s  - github/$repo%s"
  if [[ ! -e "$github_dir/$repo" ]]; then
    {
      git clone https://github.com/github/$repo/ $github_dir/$repo/
    } &> /dev/null
    printf "%s - Success!\n%s" $green $end
  else
    printf "%s - Already cloned\n%s" $cyan $end
  fi
done

#
# macOS preferences
#

printf "%s\n# Adjusting macOS...\n%s" $yellow $end
{
  # System Preferences > Dock > Automatically hide and show the Dock:
  defaults write com.apple.dock autohide -bool true
  # System Preferences > Dock > Size:
  defaults write com.apple.dock tilesize -int 36
  # System Preferences > Mission Control > Automatically rearrange Spaces based on most recent use
  defaults write com.apple.dock mru-spaces -bool false
  # Clear out the dock of default icons
  defaults delete com.apple.dock persistent-apps
  defaults delete com.apple.dock persistent-others

  # System Preferences > Trackpad > Tap to click
  defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

  # Hide desktop icons
  defaults write com.apple.finder CreateDesktop false
  # Finder > Preferences > Show all filename extensions
  defaults write NSGlobalDomain AppleShowAllExtensions -bool true
  # Finder > View > As List
  defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
  # Finder > View > Show Path Bar
  defaults write com.apple.finder ShowPathbar -bool true

  # Expand save and print modals by default
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
  defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
  defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

  # Disable autocorrect
  defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

  # Restart Finder and Dock
  killall Finder
  killall Dock
} &> /dev/null
printf "%sDone!\n%s" $green $end

#
# Additional dependencies
#

printf "%s\n# Installing additional dependencies...\n%s" $yellow $end

printf "%s\n  Homebrew:\n%s" $yellow $end

# rbenv
printf "%s  - Install rbenv%s"
if [[ ! -e "$HOME/.rbenv" ]]; then
  {
    brew install rbenv
  } &> /dev/null
  printf "%s - Done!\n%s" $green $end
else
  printf "%s - Already installed\n%s" $cyan $end
fi

# wget (for downloading files from Terminal)
printf "%s  - Install wget%s"
if [[ ! -e "$bin_dir/wget" ]]; then
  {
    brew install wget --with-libressl
  } &> /dev/null
  printf "%s - Installed!\n%s" $green $end
else
  printf "%s - Already installed\n%s" $cyan $end
fi

# install a version of ruby
printf "%s  - Install Ruby v$ruby_version%s"
if [[ ! -e "$HOME/.rbenv/versions/$ruby_version/" ]]; then
  {
    rbenv install $ruby_version
  } &> /dev/null
  printf "%s - Done!\n%s" $green $end
else
  printf "%s - Already installed\n%s" $cyan $end
fi

# set a global version
printf "%s  - Set global Ruby version%s"
if [[ ! -e "$HOME/.rbenv/version" ]]; then
  {
    rbenv install $ruby_version
  } &> /dev/null
  printf "%s - Done!\n%s" $green $end
else
  printf "%s - Already set\n%s" $cyan $end
fi

# node
printf "%s  - node%s"
if [[ ! -e "$bin_dir/node" ]]; then
  {
    brew install node
  } &> /dev/null
  printf "%s - Installed!\n%s" $green $end
else
  printf "%s - Already installed\n%s" $cyan $end
fi

# ruby gems
printf "%s\n  Gems:\n%s" $yellow $end
gems=( bundler sass jekyll )
for gem in "${gems[@]}"
do
  printf "%s  - $gem%s"
  if [[ ! -e "$HOME/.rbenv/versions/$ruby_version/bin/$gem" ]]; then
    {
      gem install $gem
    } &> /dev/null
    printf "%s - Installed!\n%s" $green $end
  else
    printf "%s - Already installed\n%s" $cyan $end
  fi
done

#
# Atom packages
#

printf "%s\n# Installing Atom packages...\n%s" $yellow $end

atom_packages=( "atom-wrap-in-tag" "selector-to-tag" editorconfig "markdown-writer" "import-sf-mono" )
for package in "${atom_packages[@]}"
do
  printf "%s  - $package%s"
  if [[ ! -e "$HOME/.atom/packages/$package" ]]; then
    {
      apm-beta install $package
    } &> /dev/null
    printf "%s - Installed!\n%s" $green $end
  else
    printf "%s - Already installed\n%s" $cyan $end
  fi
done

#
# All done!
#

printf "%s\nWoohoo, all done!\n%s" $green $end
