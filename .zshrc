# ------
# Work Setup
# ------
alias chrome='open /Applications/Google\ Chrome.app --args --ignore-certificate-errors'
# export WORKON_HOME=$HOME/.virtualenvs
# export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
# source /usr/local/bin/virtualenvwrapper.sh
export PATH="/usr/local/mysql/bin:$PATH"
export QUEUE_PREFIX=mikhailabordo
export PATH="$PATH:$HOME/.composer/vendor/bin"
# Python env manager settings
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH=$PATH:/Users/mikhailabordo/.local/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export WORKSPACE_DIR=/Users/mikhailabordo/workspace


# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]" # set to bold
PS1="$PS1\[\033[1;96m\]" #high intencity cyan
PS1="$PS1\w" #working directory
PS1="$PS1\[\033[1;95m\]" #high intensity purple
PS1="$PS1\$(current_git_branch)" #display git branch
PS1="$PS1\n\[$(tput setaf 5)\]❯ \[$(tput sgr0)\]" #editor to new line


# Aliases

# ------
# Git
# ------
alias co='git checkout'
alias log='git log'
alias logt='log --graph --decorate --oneline --all'
alias diff='git diff'
alias br='git branch'
alias st='git status'
alias fetch='echo "Fetching..." && git fetch --all --prune'
alias push='echo "Pushing..." && git push origin head'
alias pull='echo "Pulling..." && git pull origin $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias fp='fetch && pull'
alias gmm='echo "Merge from master." && git merge master'
alias com='co master'
alias brd='br -D'
alias gc='git commit'

# -------
# Shortcuts
# -------
alias ll='ls -la'
alias editbash='vi ~/.zshrc'
alias c="clear"
alias ip="curl icanhazip.com"
alias o="open ."
alias ssh-list="cat ~/.ssh/config"

# ------
# Folder directory
# ------
alias cdai='cd ~/Documents/workspace'
alias startai='cd ~/Documents/repo/ai-dev-tools/ansible-plays && make start'
alias aicomp='vi ~/Documents/repo/ai-dev-tools/ansible-plays/.components_override.yaml'
alias cdwp='cd ~/Documents/repo-wp'
alias cdtrn='cd ~/Documents/repo/devops-tools/daidokoro'
alias cpat='cd ~/Documents/sides/cpat'
alias cpatwp='cd ~/Documents/sides/cpat/web/app/themes/cpat'

