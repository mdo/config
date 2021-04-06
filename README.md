# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bash_profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file from [twbs/bootstrap](https://github.com/twbs/bootstrap) that I use everywhere. |

## Shell script (WIP)
This repository includes a shell script for executing the bulk of the configuration process. First, install and agree to terms for Xcode, then download and run Strap. Then, enter the following in Terminal:

```bash
curl https://raw.githubusercontent.com/mdo/config/master/config.sh > ~/Downloads/config.sh && bash ~/Downloads/config.sh
```

Many of the included macOS Terminal customizations are taken from <https://github.com/pawelgrzybek/dotfiles> and <https://github.com/mathiasbynens/dotfiles>.

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Open Terminal and trigger Xcode Command Line Tools installation: `xcode-select --install`

**Be sure to open Xcode and agree to the terms of use.**

### 2. Prep Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Load up the Atom theme from <https://github.com/nathanbuchar/atom-one-dark-terminal>

### 3. Secure Git(Hub) access

- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

### 4. GitHub dev setup

- Download the Strap setup script for GitHub's foundational development setup.
- Clone the `github/github` repository and run `script/bootstrap`.

### 5. Setup Ruby

- Install rbenv via Homebrew: `brew install rbenv`.
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.5.1`). See <https://gorails.com/setup/osx/10.11-el-capitan>.
- Make it the global version of Ruby: `rbenv global 2.5.1`.

*Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS X's system Ruby.*

*Having trouble with nokogiri? See <https://stackoverflow.com/a/41491487>.*

### 6. Additional dependencies

- Install node via Homebrew: `brew install node`.
- Install Sass, Jekyll, and Rouge: `gem install bundler sass jekyll rouge`.

### 7. Customize things
- Disable LCD font smoothing
- Hide desktop icons with `defaults write com.apple.finder CreateDesktop false; killall Finder`
- Set sidebar icons to Small

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
