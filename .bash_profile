# .bash_profile modified version of mdo's

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='subl ~/.gitconfig'
alias editbash='subl ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'

## Git commands
alias log='git log'
alias wut='git log master...${branch} --oneline'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias pull='git pull'

## Switch repos
DIR=~/Sites
alias h='cd ~/'
alias w='cd ${DIR}; ll'

## Server guick starts
alias ss='script/server'
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'

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

# Enable tab completion
# Already have bash completions (see above)
# source ~/.udacity-terminal-config/git-completion.bash

# Change command prompt
source ~/.udacity-terminal-config/git-prompt.sh

# Colors used for the custom bash prompt (below)
red="\[\033[38;5;203m\]"
green="\[\033[38;05;38m\]"
blue="\[\033[0;34m\]"
reset="\[\033[0m\]"

# Custom bash prompt
#
export GIT_PS1_SHOWDIRTYSTATE=1

# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\u$green\$(__git_ps1)$blue \W
$ $reset"


