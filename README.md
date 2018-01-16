# [Config](https://github.com/tyler-vs/config)

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

**Be sure to open Xcode and agree to the terms of use.**

### 2. Prep Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Load up the Ocean theme from <https://github.com/mdo/ocean-terminal>

### 3. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 4. GitHub dev setup

*Go to 6. Additional dependencies section below before reading this section.*

- ~~Download the Strap setup script for GitHub's foundational development setup.~~
- ~~Clone the `github/github` repository and run `script/osx-setup`.~~
- Download git via homebrew `brew install git`, see [git docs](https://git-scm.com/book/en/v1/Getting-Started-Installing-Git) for alternative installation guides.


### 5. Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.2.3`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.2.3`.

*Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS X's system Ruby.*

*Having trouble with nokogiri? See <https://stackoverflow.com/a/41491487>.*

### 6. Additional dependencies

- Install [Homebrew](https://brew.sh/), `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`.
  - See [notes](https://gist.github.com/indiesquidge/ec010eca3ffa254788c2) on using the `brewup` command added to the [.bashprofile](./.base_profile).
  - [Article](https://www.safaribooksonline.com/blog/2014/03/18/keeping-homebrew-date/) on keeping Homebrew up to date.
  - [Aricle on using Homebrew](https://hackercodex.com/guide/mac-development-configuration/).
- Install node via Homebrew: `brew install node`.
- Install Sass, Jekyll, and Rouge: `gem install bundler sass jekyll rouge`.
- [Homebrew Commands Cheatsheet](https://devhints.io/homebrew).


### 7. Setup ~~Atom~~ [Sublime Text 3](https://www.sublimetext.com/3)

#### 7.1 Enable CLI for Sublime Text 3

Enable `subl` Terminal commands, Use command: `sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl;`.


- [Read about setting up `sublime snippets` by Rob Dodson here](http://robdodson.me/sublime-snippet-basics/)
- [Google'S Totally Tooling Tips Sublime Text Setup Article](https://developers.google.com/web/shows/ttt/series-1/sublime-text-plugins?refresh=1)
- [Check out Google Chrome guide for setting up Sublime Text 3teams documentation.](https://developers.google.com/web/tools/setup/)
- [The short series will review devtools and setting up Chrome - Text Editor](https://developers.google.com/web/tools/setup/setup-editor)


#### 7.2 Sublime Package Control

- [Additional Sublime Text Packages](https://packagecontrol.io/)
- [My list of common packages](./sublime-text-plugins.md).

Setup Sublime Text as the default editor for `git`, guide found [here](https://help.github.com/articles/associating-text-editors-with-git/). 

`git config --global core.editor "subl -n -w"`

#### 7.3 Tab Completions for Git Commands

Git tab completions in bash, [here is how to add git tab completions](http://code-worrier.com/blog/autocomplete-git/)

### 8. Customize things

- Disable LCD font smoothing
- Hide desktop icons with `defaults write com.apple.finder CreateDesktop false; killall Finder`
- Set sidebar icons to Small
- Type faster by going to Keyboard and moving `Key Repeat` all the way to `Fast` and `Delay until repeat` all the way to `Short`.
- Bump up the contrast, go to Accessibility and check `Reduce Motion`, `Increase Contrast`.
- Get 24-Hour time by going to Language and Region and checking the `Time Format` checkbox.


### 9. Security Customizations

- [macOS Security and Privacy-Guide](https://github.com/drduh/macOS-Security-and-Privacy-Guide)
- [EFF Privacy Guidelines available](https://www.eff.org/deeplinks/2015/11/guide-google-account-privacy-settings-students), 
  - [EEF Guide #2](https://ssd.eff.org/)
  - [EFF Website](https://www.eff.org/)
  - [Badger Google Chrome Extension](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp/related?hl=en-US)
  - [HTTPS Everywhere Google Chrome Extension](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp/related?hl=en)
  - [Activate Stealth Mode on macos](https://support.apple.com/kb/PH25606?locale=en_US) for macos.
- [Remove Adobe Flash from macos](https://helpx.adobe.com/flash-player/kb/uninstall-flash-player-mac-os.html)

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Supplementary Material

- <http://sourabhbajaj.com/mac-setup/index.html>
- <https://hackercodex.com/guide/mac-development-configuration/>
- <http://robdodson.me/sublime-text-2-tips-and-shortcuts/>
- Read the markdown files in the [docs](https://github.com/tyler-vs/config/tree/master/docs) folder for more.
- How use the tab key to switch between dialog buttons on Macs:
  - Article [here](http://osxdaily.com/2010/02/26/use-the-tab-key-to-switch-between-dialog-buttons-in-mac-os-x/)
  - Quicker Gist to setup found [here](https://github.com/tyler-vs/config/docs/tab-buttons-in-mac-dialogs.md).

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
