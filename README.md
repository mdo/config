# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.inputrc` | Makes tab autocompletion case insensitive. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store.
- Download and install Xcode Command Line Tools from <https://developer.apple.com/downloads/>.

### 2. Prep Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Load [`.inputrc`](/.inputrc)
- Load up the Ocean theme from <https://github.com/mdo/ocean-terminal>

### 3. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys)

### 4. Setup Homebrew

- Install [Homebrew](http://brew.sh): `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### 5. Setup Node.js and npm

- Install [nvm](https://github.com/creationix/nvm): `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash`
- Install [Node.js](https://nodejs.org/en) via nvm: `nvm install 6.2.2`
- Make it global version of Node.js: `nvm use 6.2.2`

### 6. Setup Ruby

- Install [rbenv](https://github.com/rbenv/rbenv) via Homebrew: `brew install rbenv`
- Download a version of Ruby via rbenv (e.g., `rbenv install 2.3.1`). See <https://gorails.com/setup/osx/10.11-el-capitan>
- Make it the global version of Ruby: `rbenv global 2.3.1`

### 7. Additional dependencies

- Install Gulp: `npm install -g gulp`
- Install Sass: `gem install sass`

### 8. Setup Atom

- Set theme: `One Dark`
- Install favorite packages
  - [file-icons](https://atom.io/packages/file-icons)
  - [highlight-selected](https://atom.io/packages/highlight-selected)
  - [merge-conflicts](https://atom.io/packages/merge-conflicts)
  - [pigments](https://atom.io/packages/pigments)
  - [atom-wrap-in-tag](https://atom.io/packages/atom-wrap-in-tag)

## Use it yourself

Fork this repo, or just copy-paste things you need, and make it your own. **Please be sure to change your `.gitconfig` name and email address though!**

## Works on my machine

Yup, it does. Hopefully it does on yours as well, but please don't hate me if it doesn't.

<3
