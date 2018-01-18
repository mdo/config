export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Homebrew

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

## Shortcuts
alias ll='ls -al'
# alias editgit='subl ~/.gitconfig'
# alias editbash='subl ~/.bash_profile'
# alias resource='source ~/.bash_profile && echo "Done!"'
# alias vi=vim
#alias josh=sudo
## Git commands
alias log='git log'
# alias wut='git log master...${branch} --oneline'

# Unsure if this is a good idea as there is a computer program called diff
# for the command line. If using this prepend alias name with a g to differentiate
# between the two.
# alias diff='git diff'


alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
# alias fp='fetch && pull'
# alias gmm='git merge master'
# alias recent='git for-each-ref --sort=-committerdate refs/heads/'
# alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"



## Switch repos
#DIR=~/work
DIR=~/Sites
alias h='cd ~/'
alias w='cd ${DIR}; ll'


## Server guick starts
alias jss='bundle exec jekyll serve'
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'


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
