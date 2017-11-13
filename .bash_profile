# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Make Git branch a variable
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
# export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Homebrew

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'


## Shortcuts
alias ll='ls -al'
alias editgit='subl ~/.gitconfig'
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
#alias josh=sudo

## Git commands
alias log='git log'
alias wut='git log master...${branch} --oneline'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

## Switch repos
#DIR=~/work
DIR=~/Sites
alias h='cd ~/'
alias w='cd ${DIR}; ll'
#alias bs='cd ${DIR}/bootstrap'

## Core GitHub apps
# alias gh='cd ~/github'
# alias gg='cd ~/github/github'

## Server guick starts
alias ss='script/server'
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'
alias gtest='testrb test/integration/bundle_test.rb'

# MacOS Tasks

# Reset dock to default (with default apps)
alias resetDock='defaults delete com.apple.dock; killall Dock'

# Hide desktop icons
alias hideDesktopIcons='defaults write com.apple.finder CreateDesktop false; killall Finder'


# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# sublime text setup
#export PATH=/usr/local/bin:$PATH
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH


# Git bash completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH="/usr/local/bin:$PATH"


# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
