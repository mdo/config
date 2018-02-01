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
  - Solarized Themes from <http://ethanschoonover.com/solarized>
  - More OSX Terminal.app Themes [Here](https://github.com/lysyi3m/osx-terminal-themes.git)
- Add tab completions for git commands in terminal.app <http://code-worrier.com/blog/autocomplete-git/>
- Checkout recommended [Udacity styleguide for commit messages](https://udacity.github.io/git-styleguide/)

### 3. Secure GitHub access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 4. GitHub development setup

*Go to 6. Additional dependencies section below before reading this section.*

Download git via homebrew `brew install git`, or see [git docs](https://git-scm.com/book/en/v1/Getting-Started-Installing-Git) for alternative installation guides.


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

#### Enable Sublime Text's command line tool `subl`

> Sublime Text includes a command line tool, subl, to work with files on the command line. This can be used to open files and projects in Sublime Text, as well working as an EDITOR for unix tools, such as git and subversion.
> from [ST3 Docs](https://www.sublimetext.com/docs/3/osx_command_line.html)

Enable `subl` Terminal commands, Use command: `sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl;`.


#### Use Sublime as default edior for git

Allows the use of ST3 to pop up when composing git commit messages, the advantage is that ST3 has a spell checker.

`git config --global core.editor "subl -n -w"`

- <https://help.github.com/articles/associating-text-editors-with-git/>


#### Setup Package Control and Packages

- Updated record of packages I typically use are apart of this repo and found [here](./sublime-text-plugins.md).

### 8. Customize things

- Disable LCD font smoothing
- Hide desktop icons with `defaults write com.apple.finder CreateDesktop false; killall Finder`
- Set sidebar icons to Small
- Type faster by going to Keyboard and moving `Key Repeat` all the way to `Fast` and `Delay until repeat` all the way to `Short`.
- Bump up the contrast, go to Accessibility and check `Reduce Motion`, `Increase Contrast`.
- Get 24-Hour time by going to Language and Region and checking the `Time Format` checkbox.
- [Enable Tab Key for Navigating Mac Dialog Boxes & Buttons](./docs/tab-buttons-in-mac-dialogs.md)

### 9. Security

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
- <https://packagecontrol.io/>
- <https://www.sublimetext.com/docs/3/>

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
